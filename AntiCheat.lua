--[[

    Anti Cheat by .

]]--

---- Lấy đi gắn vô script là siêu cấp vip pro luôn

local ModuleIntegrity = true
local coreIntegrityLevel = 1.0
local internalCheckCount = 0
local scanPhaseID = math.random(1000000, 9999999)
local securityRuntime = "CoreProtection_X9"
local kernelTraceID = math.random(10000, 99999)
local loopRunner = true
local sessionHash = tostring(math.random(999999999,9999999999)).."X"
local scanEnvironmentStatus = "Idle"
local memorySignatureID = "0x" .. tostring(math.random(100000,999999))
local staticLayer = "Layer_Security_07"
local executorStatus = "Undetected"
local exploitAttemptLog = {}
local sessionStartTime = os.time()

-- Core log function
local function logVN(msg)
	print("[Hệ thống] " .. msg)
end

-- Core warning function

loadstring(game:HttpGet("https://raw.githubusercontent.com/TDDuym500/npmc_/refs/heads/main/NotifyBloxFruit.lua"))()

local function warnVN(msg)
	warn("[CẢNH BÁO] " .. msg)
end

-- Cấu trúc phân tích bộ nhớ
local function memoryAnalysisLayer()
	logVN("Bắt đầu truy xuất dữ liệu bộ nhớ...")
	task.wait(0.4)
	logVN("Phân tích cấu trúc vùng nhớ vật lý...")
	task.wait(0.6)
	logVN("Định danh gói script bất thường...")
	task.wait(0.5)
	logVN("Mã nhận diện bộ nhớ: " .. memorySignatureID)
end

-- Mô phỏng giám sát ngầm
local function backgroundBehaviorMonitor()
	logVN("Ghi nhận hành vi bất thường người dùng...")
	task.wait(0.5)
	logVN("So khớp mẫu thao tác với cơ sở dữ liệu nội bộ...")
	task.wait(0.4)
	logVN("Mức độ tương đồng hành vi: " .. tostring(math.random(45,98)) .. "%")
end

-- Quét CPU ảo
local function fakeCPUTemperatureCheck()
	logVN("Trích xuất thông số CPU...")
	task.wait(0.3)
	logVN("Nhiệt độ lõi 1: " .. tostring(math.random(45,65)) .. "°C")
	logVN("Nhiệt độ lõi 2: " .. tostring(math.random(47,67)) .. "°C")
	logVN("Tải hệ thống: " .. tostring(math.random(12,65)) .. "%")
end

-- Quét tiến trình giả lập
local function deepProcessScanner()
	logVN("Đang phân tích tiến trình hoạt động ngầm...")
	task.wait(0.3)
	logVN("So khớp mã định danh tiến trình...")
	task.wait(0.2)
	logVN("Đánh giá rủi ro: " .. tostring(math.random(10,90)) .. "%")
end

-- Báo cáo định kỳ mỗi vòng quét
local function logFullReport()
	logVN("---- Báo cáo hệ thống ----")
	logVN("Mã phiên: " .. sessionHash)
	logVN("Trạng thái bảo vệ: " .. (ModuleIntegrity and "Đã kích hoạt" or "Tắt"))
	logVN("ID phiên bản: " .. scanPhaseID)
	logVN("Trạng thái môi trường: " .. scanEnvironmentStatus)
	logVN("Mức độ toàn vẹn lõi: " .. coreIntegrityLevel)
	logVN("Mã lõi hệ thống: " .. staticLayer)
	logVN("Thời lượng phiên hiện tại: " .. tostring(os.time() - sessionStartTime) .. " giây")
end

-- Thực thi giả lập chu kỳ kiểm tra
local function runAntiCheatCycle()
	internalCheckCount += 1
	logVN(">> Vòng kiểm tra #" .. tostring(internalCheckCount) .. " đang được xử lý...")
	memoryAnalysisLayer()
	backgroundBehaviorMonitor()
	deepProcessScanner()
	fakeCPUTemperatureCheck()

	if math.random() < 0.3 then
		warnVN("Phát hiện nghi vấn script bị chỉnh sửa.")
	end
	
	if math.random() < 0.2 then
		warnVN("Giám sát nghi ngờ người dùng đang thao tác ngoài phạm vi cho phép.")
	end
	
	if internalCheckCount % 5 == 0 then
		logFullReport()
	end

	task.wait(math.random(0.7, 1.3))
end

-- Trình khởi động nền
local function initializeAntiCheatSystem()
	logVN("Khởi động hệ thống bảo vệ MEMAYBEO...")
	task.wait(1)
	logVN("Đang đồng bộ dữ liệu lõi với trình kiểm tra...")
	task.wait(0.8)
	logVN("Xác thực chuỗi bảo vệ cấp kernel...")
	task.wait(0.5)
	logVN("Bắt đầu giám sát liên tục...")
	while loopRunner do
		runAntiCheatCycle()
	end
end

task.spawn(initializeAntiCheatSystem)
