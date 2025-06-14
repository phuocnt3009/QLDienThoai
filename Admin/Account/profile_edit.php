<?php
require '../../config.php';

// Kiểm tra đăng nhập và vai trò
if (!isset($_SESSION['user']) || !in_array($_SESSION['user']['VaiTro'], ['AD', 'NV'])) {
    header("HTTP/1.1 400 Bad Request");
    die("Yêu cầu không hợp lệ!");
}

$id = isset($_GET['id']) ? $_GET['id'] : null;

// Kiểm tra id
if (empty($id)) {
    header("HTTP/1.1 400 Bad Request");
    die("Yêu cầu không hợp lệ!");
}

// Kiểm tra id khớp với người dùng hiện tại
$user = $_SESSION['user'];
if ($id !== $user['MaNguoiDung']) {
    header("HTTP/1.1 404 Not Found");
    die("Yêu cầu không hợp lệ!");
}

// Lấy thông tin người dùng
$sql = "SELECT MaNguoiDung, HoTen, GioiTinh, SDT, Email, MatKhau, DiaChi, AnhDaiDien, VaiTro 
        FROM NguoiDung WHERE MaNguoiDung = ?";
$stmt = $conn->prepare($sql);
if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}
$stmt->bind_param("s", $id);
if (!$stmt->execute()) {
    die("Lỗi thực thi truy vấn: " . $stmt->error);
}
$result = $stmt->get_result();
$nguoiDung = $result->fetch_assoc();
$stmt->close();

if (!$nguoiDung) {
    header("HTTP/1.1 404 Not Found");
    die("Không tìm thấy trang!");
}

// Khởi tạo biến thông báo
$tb = '';

// Xử lý form chỉnh sửa
if (isset($_POST['submit'])) {
    $hoTen = $_POST['HoTen'];
    $gioiTinh = $_POST['GioiTinh'];
    $sdt = $_POST['SDT'];
    $email = $_POST['Email'];
    $matKhau = $_POST['MatKhau'];
    $diaChi = $_POST['DiaChi'];
    $anhDaiDien = $nguoiDung['AnhDaiDien'];

    // Xử lý ảnh đại diện
    if (isset($_FILES['Avatar']) && $_FILES['Avatar']['error'] === UPLOAD_ERR_OK) {
        $fileName = basename($_FILES['Avatar']['name']);
        $uploadDir = '../../Images/User/';
        $uploadPath = $uploadDir . $fileName;

        // Kiểm tra loại file
        $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
        $fileType = mime_content_type($_FILES['Avatar']['tmp_name']);
        if (in_array($fileType, $allowedTypes)) {
            if (move_uploaded_file($_FILES['Avatar']['tmp_name'], $uploadPath)) {
                $anhDaiDien = $fileName;
            } else {
                $tb = "Lỗi khi lưu ảnh đại diện.";
            }
        } else {
            $tb = "Chỉ chấp nhận file ảnh JPEG, PNG hoặc GIF.";
        }
    }

    // Kiểm tra email đã tồn tại
    $sql = "SELECT Email FROM NguoiDung WHERE Email = ? AND MaNguoiDung != ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $email, $id);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $tb = "Email đã tồn tại! Vui lòng chọn email khác.";
        $stmt->close();
    } elseif (!str_ends_with($email, '@gmail.com')) {
        $tb = "Vui lòng sử dụng email có đuôi @gmail.com!";
        $stmt->close();
    } else {
        $stmt->close();

        // Cập nhật người dùng
        $sql = "UPDATE NguoiDung SET HoTen = ?, GioiTinh = ?, SDT = ?, Email = ?, MatKhau = ?, DiaChi = ?, AnhDaiDien = ? 
                WHERE MaNguoiDung = ?";
        $stmt = $conn->prepare($sql);
        $gioiTinh = $gioiTinh === 'True' ? 1 : 0;
        $stmt->bind_param("sissssss", $hoTen, $gioiTinh, $sdt, $email, $matKhau, $diaChi, $anhDaiDien, $id);

        if ($stmt->execute()) {
            // Cập nhật session
            $_SESSION['user'] = [
                'MaNguoiDung' => $id,
                'HoTen' => $hoTen,
                'Email' => $email,
                'DiaChi' => $diaChi,
                'VaiTro' => $nguoiDung['VaiTro']
            ];
            $stmt->close();
            header("Location: profile.php?id=" . $id);
            exit;
        } else {
            $tb = "Lỗi khi cập nhật: " . $stmt->error;
            $stmt->close();
        }
    }
}
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa thông tin</title>
    <link rel="stylesheet" href="../../Content/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="../../Content/Style.css">
</head>
<body>
    <!-- Header -->
    <div id="header">
        <div class="d-flex">
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false" style="font-size: 20px; margin-left: 30px">
                        <i class="fas fa-bars"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="thongke.php">
                            <div class="icon" style="color: black">Báo cáo - Thống kê</div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="admin.php">
                            <div class="icon" style="color: black">Quản lý sản phẩm</div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../Brand/brand.php">
                            <div class="icon" style="color: black">Quản lý hãng sản xuất</div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../Color/color.php">
                            <div class="icon" style="color: black">Quản lý màu sắc</div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="account.php">
                            <div class="icon" style="color: black">Quản lý người dùng</div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../Order/order.php">
                            <div class="icon" style="color: black">Quản lý đơn hàng</div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
        <a href="../admin.php">
            <div class="logo" style="margin-left: 30px">
                <img src="../../Images/Banner/logo.jpg" alt="Logo">
            </div>
        </a>
        <div class="d-flex align-items-center ms-auto nav-icons" style="margin-right: 90px">
            <div class="user-greeting"><?php echo "Xin chào, " . $user['HoTen']; ?></div>
            <a href="profile.php?id=<?php echo $user['MaNguoiDung']; ?>" class="icon">
                <i class="fas fa-user"></i> Hồ sơ
            </a>
            <a href="../../logout.php" class="icon">
                <i class="fas fa-sign-out"></i> Đăng xuất
            </a>
        </div>
    </div>

    <!-- Content -->
    <div class="container mt-4">
        <div class="card shadow-lg pb-4" style="max-width: 70%; margin: 0 auto;">
            <div class="card-header brand-header text-center">
                Chỉnh sửa thông tin
            </div>
            <div class="card-body">
                <?php if (!empty($tb)): ?>
                    <div class="alert alert-danger text-center"><?php echo $tb; ?></div>
                <?php endif; ?>
                <div class="row pt-2">
                    <div class="col-md-8 m-auto">
                        <form method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="MaNguoiDung" value="<?php echo $nguoiDung['MaNguoiDung']; ?>">
                            <input type="hidden" name="VaiTro" value="<?php echo $nguoiDung['VaiTro']; ?>">
                            <table class="table1">
                                <tr>
                                    <td><strong>Họ và tên:</strong></td>
                                    <td>
                                        <input type="text" name="HoTen" class="form-control" 
                                               value="<?php echo $nguoiDung['HoTen']; ?>" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Giới tính:</strong></td>
                                    <td>
                                        <div class="checkbox">
                                            <label><input type="radio" name="GioiTinh" value="True" 
                                                          <?php echo $nguoiDung['GioiTinh'] ? 'checked' : ''; ?>> Nam</label>
                                             
                                            <label><input type="radio" name="GioiTinh" value="False" 
                                                          <?php echo !$nguoiDung['GioiTinh'] ? 'checked' : ''; ?>> Nữ</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Số điện thoại:</strong></td>
                                    <td>
                                        <input type="text" name="SDT" class="form-control" 
                                               value="<?php echo $nguoiDung['SDT']; ?>" required 
                                               pattern="^\d{10}$" title="Số điện thoại phải có 10 chữ số.">
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Email:</strong></td>
                                    <td>
                                        <input type="email" name="Email" class="form-control" 
                                               value="<?php echo $nguoiDung['Email']; ?>" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Mật khẩu:</strong></td>
                                    <td>
                                        <input type="text" name="MatKhau" class="form-control" 
                                               value="<?php echo $nguoiDung['MatKhau']; ?>" required 
                                               minlength="6" title="Mật khẩu phải có ít nhất 6 ký tự.">
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Địa chỉ:</strong></td>
                                    <td>
                                        <input type="text" name="DiaChi" class="form-control" 
                                               value="<?php echo $nguoiDung['DiaChi']; ?>">
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Ảnh đại diện:</strong></td>
                                    <td>
                                        <input type="text" name="AnhDaiDien" id="AnhDaiDien" class="form-control" 
                                               value="<?php echo $nguoiDung['AnhDaiDien']; ?>" readonly>
                                        <input type="file" name="Avatar" id="Avatar" accept="image/*" style="margin-top: 5px;">
                                    </td>
                                </tr>
                            </table>
                            <div class="text-center d-flex justify-content-center gap-2 mt-4">
                                <a href="profile.php?id=<?php echo $id; ?>" class="btn1">Quay lại</a>
                                <button type="submit" name="submit" class="btn2">Lưu</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div id="footer">
        Copyright © <?php echo date('Y'); ?> - Ego Mobile
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> 
    <script>
        $(function () {
            var fileupload = $("#Avatar");
            var image = $("#AnhDaiDien");
            fileupload.change(function () {
                var fileName = $(this).val().split('\\').pop();
                image.val(fileName);
            });
        });
    </script>
</body>
</html>
