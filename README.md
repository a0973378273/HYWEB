# 天氣預報 App

串接中央氣象署「今明 36 小時天氣預報」API（F-C0032-001），提供台灣各縣市天氣查詢功能。

## 功能

- 輸入城市名稱查詢 36 小時天氣預報（3 個時段）
- 顯示天氣現象、溫度範圍、降雨機率、舒適度
- 天氣圖示依天氣代碼動態對應
- 城市名稱自動建議（支援全台 22 縣市）
- 鍵盤 Enter 快速搜尋
- 完整錯誤處理（網路錯誤、查無資料、授權失敗等）

## 環境需求

- Flutter SDK >= 3.9.0
- Dart SDK >= 3.9.0

## 安裝與執行

```bash
# 1. 安裝依賴
flutter pub get

# 2. 生成程式碼（freezed / json_serializable / riverpod_generator）
dart run build_runner build --delete-conflicting-outputs

# 3. 執行（需帶入 API Key）
flutter run --dart-define=API_KEY=你的API授權碼
```

### API Key 取得方式

1. 前往[中央氣象署開放資料平臺](https://opendata.cwa.gov.tw/)
2. 註冊帳號並登入
3. 進入「資料使用說明」→「API 授權碼」取得授權碼

## 架構說明

採用 Feature-based 分層架構：

```
lib/
├── app.dart                          # MaterialApp 設定
├── main.dart                         # 進入點，ProviderScope 設定
└── feature/
    └── weather/
        ├── data/                     # 資料層
        │   ├── model/               # API JSON 對應的 freezed model
        │   └── repository/          # Dio API 呼叫與錯誤處理
        ├── domain/                   # Domain 層
        │   ├── model/               # UI 用簡化 model (WeatherInfo)
        │   └── mapper/              # API Response → WeatherInfo 轉換
        └── presentation/            # 展示層
            ├── provider/            # Riverpod 狀態管理 (WeatherNotifier)
            ├── screen/              # 頁面 (WeatherScreen)
            └── widget/              # UI 元件 (四個狀態 Widget)
```

### 設計模式

- **狀態管理**: Riverpod 2.0 code generation（`@riverpod` annotation）
- **資料模型**: freezed（immutable model + sealed class）
- **API 序列化**: json_serializable
- **網路層**: Dio
- **UI 狀態**: WeatherState sealed class（Initial / Loading / Loaded / Error）

## 第三方套件

| 套件 | 用途 |
|------|------|
| flutter_riverpod | 狀態管理 |
| riverpod_annotation | Riverpod code gen annotation |
| riverpod_generator | Riverpod code gen (dev) |
| dio | HTTP client |
| freezed_annotation | Freezed annotation |
| freezed | Immutable model code gen (dev) |
| json_annotation | JSON 序列化 annotation |
| json_serializable | JSON 序列化 code gen (dev) |
| build_runner | Code generation runner (dev) |
