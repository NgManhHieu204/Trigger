# Bài tập 05 của SV: Nguyễn Mạnh Hiếu -  K225480106020 - Môn Hệ quản trị CSDL
## TRIGGER
### A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT: Có database với các bảng dữ liệu cần thiết (3nf), Các bảng này đã có PK, FK, CK cần thiết
### B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn (là trường tính toán đc, nhưng thêm vào thì ok hơn,ok hơn theo 1 logic nào đó, vd ok hơn về speed)=> Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, mà có sử dụng trường phi chuẩn này,nhằm đạt được 1 vài mục tiêu nào đó.=> Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.


## A. Trình bày lại đầu bài của đồ án PT&TKHT

### TÊN ĐỀ TÀI: PHÂN TÍCH VÀ THIẾT KẾ HỆ THỐNG ĐIỂM DANH BẰNG NHẬN DIỆN KHUÔN MẶT

Yêu cầu của đề tài: Thiết kế hệ thống điểm danh bằng nhận diện khuôn mặt

DB của đồ án:

Bảng SinhVien

![Screenshot 2025-04-23 161158](https://github.com/user-attachments/assets/ef9894f7-50b3-433d-8834-aad671301200)

Bảng PhuHuynh

![Screenshot 2025-04-23 161446](https://github.com/user-attachments/assets/00252a55-8be9-426b-af55-578fdb396357)

Bảng NguoiDung

![Screenshot 2025-04-23 161612](https://github.com/user-attachments/assets/b3b769d8-794c-421c-857a-f90b7f621b5f)

Bảng MonHoc

![Screenshot 2025-04-23 161927](https://github.com/user-attachments/assets/a8d8142a-e34c-48dd-bc0a-11a911b66c2b)

Bảng Lop

![Screenshot 2025-04-23 161958](https://github.com/user-attachments/assets/6e927051-2db2-40c0-9fb8-12ee3f953e2a)

Bảng GiaoVien

![Screenshot 2025-04-23 162035](https://github.com/user-attachments/assets/3dea4723-6b0d-462b-9edd-c54cb1d10011)

Bảng LichHoc

![Screenshot 2025-04-23 162308](https://github.com/user-attachments/assets/e33d7d17-9984-458b-9e5f-30b3418ae8d5)

Bảng LichThucTe

![Screenshot 2025-04-23 162343](https://github.com/user-attachments/assets/670cef58-d277-4675-ac5f-3e416b2c1a06)

Bảng DiemDanh

![Screenshot 2025-04-23 162447](https://github.com/user-attachments/assets/1ae95b8d-3755-4656-bd5b-17384ba3b3ab)

Bảng LichSuDiemDanh

![Screenshot 2025-04-23 162520](https://github.com/user-attachments/assets/173e4bba-68dd-4793-90f8-97423d4dfdb3)

Bảng ThongBao

![Screenshot 2025-04-23 162556](https://github.com/user-attachments/assets/8a2eb133-0dcf-490e-aaad-400d92cf2a30)

Bảng FaceData

![Screenshot 2025-04-23 162651](https://github.com/user-attachments/assets/8d04ebd6-4d31-4220-b563-48e821a473a7)

Sơ đồ liên kết thực thể

![Screenshot 2025-04-23 164711](https://github.com/user-attachments/assets/91e7303f-446b-433e-b739-881925e41a76)

Các Check Constraint

![Screenshot 2025-04-23 165657](https://github.com/user-attachments/assets/5e97fa4d-c7c7-4fef-8054-68ad0d957b07)

![Screenshot 2025-04-23 165726](https://github.com/user-attachments/assets/bd95624a-5bec-4d60-bbdb-d31c89e7a46b)

![Screenshot 2025-04-23 170124](https://github.com/user-attachments/assets/e9eaaa27-c89c-4833-a212-4c518cef2066)

![Screenshot 2025-04-23 170213](https://github.com/user-attachments/assets/401e4dc3-b977-4b53-ac62-f170e74f0e00)

![Screenshot 2025-04-23 170255](https://github.com/user-attachments/assets/df381e01-88c6-4964-9e2a-47175f46b1f7)

![Screenshot 2025-04-23 170419](https://github.com/user-attachments/assets/e21e3356-a888-4f2e-90d8-9f06fc895bbc)

Các khóa ngoại liên kết các bảng

![Screenshot 2025-04-23 171130](https://github.com/user-attachments/assets/f479b77a-ad2a-4238-8051-ed16dbf872a2)

![Screenshot 2025-04-23 170814](https://github.com/user-attachments/assets/75024e7d-69fd-4719-83bb-dd041250b817)

![Screenshot 2025-04-23 170928](https://github.com/user-attachments/assets/10743425-4873-4679-a7aa-49f55062d15c)

![Screenshot 2025-04-23 171023](https://github.com/user-attachments/assets/5ff83dca-ad3d-4a75-adef-8346c13f8317)

## B. Nội dung Bài tập 05

Thêm trường phi chuẩn là SoLanVang vào bảng SinhVien

![Screenshot 2025-04-23 161158](https://github.com/user-attachments/assets/aa40ae87-8b4a-45d1-892d-46d937698102)

Ban đầu sinh viên với mã 101 có số lần vắng là không

![Screenshot 2025-04-23 222701](https://github.com/user-attachments/assets/c8135aea-dc0e-42a0-b444-1e622f5980e3)

Viết trigger để tự động cập nhật số lần vắng mặt của sinh viên

![Screenshot 2025-04-23 222810](https://github.com/user-attachments/assets/77d1f88b-78c9-44fe-a1ce-9e71300774cb)

Sau khi thêm dư liệu vào trigger sẽ tự động update số lần vắng mặt của sinh viên và lưu kết quả vào bảng sinh viên

![Screenshot 2025-04-23 224204](https://github.com/user-attachments/assets/b5bcf4b6-61a6-477b-a758-a47ea03dea05)

Đây là kết quả sau khi đã update

![Screenshot 2025-04-23 224214](https://github.com/user-attachments/assets/553f4534-8460-4cc1-9746-2340f7d963cf)

==> Kết luận: Trigger giúp tự động tăng SoLanVang trong bảng SinhVien khi sinh viên được điểm danh với trạng thái Vắng

điều nầy giúp không cần viết lệnh UPDATE thủ công.
