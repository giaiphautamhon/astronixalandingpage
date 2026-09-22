# HƯỚNG DẪN KẾT NỐI GOOGLE SHEET NHẬN THÔNG TIN KHÁCH HÀNG

Chỉ mất đúng **2 phút** để tạo bảng tính Google Sheet tự động ghi nhận mỗi khi khách điền Form.

---

## 📌 BƯỚC 1: Tạo Google Sheet mới

1. Truy cập [sheets.google.com](https://sheets.google.com) và tạo một **Bảng tính mới**.
2. Đặt tiêu đề bảng tính: `Khách Hàng Đăng Ký - Ohana Astronixa`.
3. Tại dòng số 1, tạo các cột tiêu đề sau:
   * Cột A: **Thời gian**
   * Cột B: **Họ và tên**
   * Cột C: **Số điện thoại / Zalo**
   * Cột D: **Email**
   * Cột E: **Gói quan tâm**
   * Cột F: **Trạng thái**

---

## 📌 BƯỚC 2: Dán mã Apps Script tự động ghi dữ liệu

1. Trên thanh menu của Google Sheet, bấm vào:  
   👉 **Tiện ích mở rộng (Extensions)** ➔ Chọn **Apps Script**.
2. Xóa toàn bộ đoạn mã mặc định có sẵn và **dán đoạn mã dưới đây vào**:

```javascript
function doPost(e) {
  try {
    var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
    var data = JSON.parse(e.postData.contents);
    
    sheet.appendRow([
      data.time || new Date().toLocaleString("vi-VN", { timeZone: "Asia/Ho_Chi_Minh" }),
      data.name || "",
      "'" + (data.phone || ""), // Thêm dấu nháy để không bị mất số 0 đầu số điện thoại
      data.email || "",
      data.interest || "",
      "Khách mới đăng ký"
    ]);
    
    return ContentService.createTextOutput(JSON.stringify({ status: "success" }))
      .setMimeType(ContentService.MimeType.JSON);
  } catch (error) {
    return ContentService.createTextOutput(JSON.stringify({ status: "error", message: error.toString() }))
      .setMimeType(ContentService.MimeType.JSON);
  }
}
```

3. Bấm biểu tượng 💾 **Lưu (Save)** (hoặc `Ctrl + S`).

---

## 📌 BƯỚC 3: Xuất bản (Triển khai Web App)

1. Ở góc trên bên phải, bấm nút xanh: **Triển khai (Deploy)** ➔ Chọn **Triển khai mới (New deployment)**.
2. Bấm vào biểu tượng bánh răng ⚙️ bên cạnh "Chọn loại", chọn **Ứng dụng web (Web app)**.
3. Điền cấu hình:
   * **Mô tả**: Nhận data landing page
   * **Thực thi dưới dạng (Execute as)**: Chọn **Tôi (Me)**
   * **Ai có quyền truy cập (Who has access)**: Chọn **Bất kỳ ai (Anyone)**  *(⚠️ Quan trọng: phải chọn "Bất kỳ ai" để website gửi được dữ liệu sang)*
4. Bấm **Triển khai (Deploy)**.
   * Nếu Google yêu cầu cấp quyền: Bấm *Ủy quyền truy cập* ➔ Chọn tài khoản Gmail của bạn ➔ Bấm *Nâng cao (Advanced)* ➔ Bấm *Đi tới Dự án (Không an toàn)* ➔ Bấm *Cho phép (Allow)*.
5. Sau khi xong, Google sẽ cung cấp cho bạn một đường link có dạng:  
   👉 `https://script.google.com/macros/s/AKfycb.../exec`
6. **Copy đường link đó** và gửi cho tôi (hoặc dán vào dòng `googleSheetUrl` trong file `profile-config.js`).

Xong! Từ nay mỗi khi có khách bấm gửi form, thông tin sẽ lập tức nhảy vào Google Sheet và điện thoại của khách sẽ tự động mở Zalo của bạn!
