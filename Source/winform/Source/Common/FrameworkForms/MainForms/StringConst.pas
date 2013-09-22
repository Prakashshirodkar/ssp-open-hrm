unit StringConst;

interface
uses dxDBCtrl, MainDM;
type
  TfxMsgCode = (icConfirmDelete, icNoPermission, icInvalidDate, icSystemDelete,
    icInvalidDatabase, icIncorrectOldPass, icIncorrectPassConfirm,
    icChangedPass, icFailConnection, icDisconnectedConnection,
    icIncorrectConfiguration, icDeniedDBAccess, icNotAvailableDBMS,
    icFailDBAccess, icNotFoundTemplate, icFailInit, icGenColumnConfirm,
    icGenParamConfirm, icDeleteColumnConfirm,icInvalidData,icTerminalConfirm,
    icNotFoundUsername,icIncorrectPassword,icInvalidConnectionManager,
    icContactAdministrator,icNotDefLogView, icConflictTransaction,
    icDuplicatedData,icFailDeletion,icInvalidDataConstraints,
    icInvalidDB, icInvalidTemplate, icInvalidSQL, icLockedRecord);

  TfxTimeUnit = (tuDay, tuWeek, tuMonth, tuQuater, tuYear);
  TfxDayCode = (dcSun = 1, dcMon = 2, dcTue = 3, dcWed = 4, dcThu = 5,
    dcFri = 6, dcSat = 7);
  TfxCharCase = (csLowerCase, csNormal, csUpperCase);
  TfxMonthCode = (mcJan = 1, mcFeb = 2, mcMar = 3, mcApr = 4, mcMay = 5, mcJun =
    6, mcJul = 7, mcAug = 8, mcSep = 9, mcOct = 10, mcNov = 11, mcDec = 12);
  TfxTimeFilter = (tfYesterday, tfToDay, tfTomorrow, tfPriorWeek, tfThisWeek,
    tfNextWeek, tfPriorMonth, tfThisMonth, tfNextMonth, tfPriorYear, tfThisYear,
    tfNextYear, tfOther, tfAll);
  TfxGenderCode = (gcMale, gcFemale, gcChildren);
  TfxDefWindows = (dwDocuments, dwPartner, dwMaterial, dwReport);
var
  {thong bao}
  MsgTexts: array[TfxMsgCode] of string = (
    'Thông tin bị xóa sẽ không thể phục hồi! Bạn có chắc chắn muốn xóa?',
    'Bạn không có quyền thực hiện thao tác này',
    'Ngày không hợp lệ!',
    'Không thể xóa đối tượng hệ thống!',
    'Tập tin dữ liệu không đúng!',
    'Mật khẩu cũ không đúng',
    'Xác nhận mật khẩu không đúng',
    'Mật khẩu đăng nhập đã được thay đổi!',
    'Không thể tạo ra một kết nối mạng tới máy chủ!',
    'Đứt kết nối tới máy chủ!',
    'Cấu hình không đúng!',
    'Không có quyền truy cập tập tin dữ liệu!',
    'Ứng dụng quản trị cơ sở dữ liệu chưa được khởi động!!',
    'Không thể truy xuất tập tin dữ liệu!',
    'Không tìm thấy tập tin mẫu in có tên ',
    'Lỗi khởi tạo',
    'Bạn có muốn tạo ra các cột cho bảng dữ liệu không?',
    'Bạn có muốn tạo ra danh sách tham số cho bảng dữ liệu không?',
    'Bạn có giữ lại các cột dữ liệu hiện tại không?',
    'Giá trị dữ liệu không hợp lệ',
    'Bạn muốn đóng ứng dụng không?',
    'Tên đăng nhập không đúng',
    'Mật khẩu không đúng',
    'Chương trình quản lý kết nối  hoạt động không đúng.',
    'Liên hệ người quản trị để khắc phục sự cố này!',
    'Chưa định nghĩa thông số cho việc xem lại quá trình!',
    'Xung đột dữ liệu! Vui lòng chờ giây lát.',
    'Dữ liệu bị trùng lắp. Vui lòng xem lại',
    'Không thể xóa mẫu tin này vì đã được sử dụng trong các phần khác!',
     'Ràng buộc dữ liệu không đúng !',
     'Lỗi tập tin dữ liệu !',
     'Mẫu in bị lỗi',
     'Câu lệnh SQL không đúng!',
     'Không thể thực hiện thao tác vì dữ liệu này bị khóa!');
  {thu trong tuan}
  TimeUnitTexts: array[TfxTimeUnit] of string = ('ngày', 'tuần', 'tháng',
    'qúy', 'năm');
  ShortDayTexts: array[TfxDayCode] of string = ('Mon', 'Tue', 'Wed', 'Thu',
    'Fri', 'Sat', 'Sun');
  DayTexts: array[TfxDayCode] of string = ('Monday', 'Tuesday', 'Wednesday',
    'Thursday', 'Friday', 'Saturday', 'Sunday');
  MonthTexts: array[TfxMonthCode] of string = ('January', 'February', 'March',
    'April', 'May', 'June', 'July', 'August', 'September', 'October',
    'November', 'December');
  {bo loc}
  FilterTexts: array[TfxTimeFilter] of string = ('Hôm qua', 'Hôm nay',
    'Ngày mai', 'Tuần trước', 'Tuần này', 'Tuần tới',
    'Tháng trước', 'Tháng này', 'Tháng tới', 'Năm trước',
    'Năm này', 'Năm tới', 'Thời gian khác', 'Tất cả');
  stSumnmaryFooterText: array[TdxSummaryType] of string = ('Để trống',
    'Tổng', 'Nhỏ nhất', 'Lớn nhất', 'Đếm', 'Trung bình');
  CharCaseTexts: array[TfxCharCase] of string = ('Chữ thường',
    'Không chuyển đổi', 'Chữ hoa');
  DefWindowsTexts: array[TfxDefWindows] of string = ('Tài liệu',
    'Khách hàng', 'Hàng hóa', 'Báo cáo');
  GenderTexts: array[TfxGenderCode] of string = ('Nữ', 'Nam', 'Trẻ em');
implementation

end.

