# 天氣預報 App - 任務清單

## 專案概述
串接中央氣象署「今明 36 小時天氣預報」API（F-C0032-001），實現城市天氣查詢功能。
技術棧：Flutter + Riverpod 2.0 code gen（禁止 hook）+ Dio + freezed + json_serializable

### 套件規範
- flutter_riverpod、riverpod_annotation、riverpod_generator
- dio
- freezed、freezed_annotation、json_annotation、json_serializable
- build_runner（dev dependency）
- 不使用 hook（spec 要求）

---

## UI Wireframe

頁面結構（依照 spec wireframe）：
```
┌──────────────────────────────┐
│ [請輸入城市名稱       ] [確認] │  ← 頂部：TextField + 確認 Button
├──────────────────────────────┤
│                              │
│                              │
│          顯示區塊             │  ← 下方：根據狀態切換的顯示區域
│                              │
│                              │
└──────────────────────────────┘
```

顯示區塊有四種狀態：
1. **初始狀態**：未輸入查詢城市時的畫面
2. **Loading**：呼叫城市天氣 API 時的 Loading 畫面（inline，非 Dialog）
3. **成功**：呼叫 API 成功，根據回傳資料展示城市天氣
4. **錯誤**：呼叫 API 失敗，根據失敗情況回應對應錯誤字串

---

## API 規範

### 基本資訊
- **Base URL**: `https://opendata.cwa.gov.tw/api`
- **Endpoint**: `/v1/rest/datastore/F-C0032-001`
- **Method**: GET
- **Query Parameters**:
  - `Authorization`: API 授權碼（透過 `--dart-define=API_KEY=<key>` 帶入，不寫死在程式碼中）
  - `locationName`: 縣市名稱（如「臺北市」、「宜蘭縣」）

### 回傳 JSON 結構
```json
{
  "success": "true",
  "result": {
    "resource_id": "F-C0032-001",
    "fields": [...]
  },
  "records": {
    "datasetDescription": "三十六小時天氣預報",
    "location": [
      {
        "locationName": "臺北市",
        "weatherElement": [
          {
            "elementName": "Wx",           // 天氣現象
            "time": [
              {
                "startTime": "2026-05-25 12:00:00",
                "endTime": "2026-05-25 18:00:00",
                "parameter": {
                  "parameterName": "晴時多雲",  // 天氣描述
                  "parameterValue": "2"         // 天氣圖示代碼
                }
              }
              // 共 3 個時段
            ]
          },
          {
            "elementName": "PoP",          // 降雨機率
            "time": [{
              "parameter": {
                "parameterName": "0",        // 降雨機率數值
                "parameterUnit": "百分比"
              }
            }]
          },
          {
            "elementName": "MinT",         // 最低溫
            "time": [{
              "parameter": {
                "parameterName": "26",       // 溫度數值
                "parameterUnit": "C"
              }
            }]
          },
          {
            "elementName": "CI",           // 舒適度
            "time": [{
              "parameter": {
                "parameterName": "舒適至悶熱"  // 舒適度描述（無 unit）
              }
            }]
          },
          {
            "elementName": "MaxT",         // 最高溫
            "time": [{
              "parameter": {
                "parameterName": "37",
                "parameterUnit": "C"
              }
            }]
          }
        ]
      }
    ]
  }
}
```

### 天氣元素說明
| elementName | 說明 | parameterName | parameterValue / Unit |
|-------------|------|---------------|----------------------|
| Wx | 天氣現象 | 天氣描述文字 | 天氣圖示代碼（數字） |
| PoP | 降雨機率 | 機率數值 | 百分比 |
| MinT | 最低溫度 | 溫度數值 | C |
| MaxT | 最高溫度 | 溫度數值 | C |
| CI | 舒適度指數 | 舒適度描述 | （無） |

### 注意事項
- 每個 weatherElement 固定有 3 個時段（36 小時 / 每 12 小時一段）
- locationName 需使用全名（「臺北市」非「台北市」），但 API 實測「台北市」也可查詢
- Wx 的 parameterValue 為天氣圖示代碼，可用於對應天氣 icon
- CI 的 parameter 沒有 parameterUnit 欄位

---

## 待辦

### Task 8：README.md 撰寫
- [ ] 專案說明與截圖
- [ ] 環境需求與安裝步驟
- [ ] 架構說明（資料夾結構、設計模式）
- [ ] 使用的第三方套件與版本
- [ ] API key 設定方式（說明 `--dart-define` 用法，提供完整執行指令）

### Task 9：Git 初始化與提交至 GitHub
- [ ] git init + 初始 commit
- [ ] push 至 GitHub：git@github.com:a0973378273/HYWEB.git
- [ ] 確認鏈結可存取

---

## 進行中

### Task 7：UI 美化與使用者體驗
- [ ] 天氣圖示對應（根據 Wx parameterValue 天氣代碼對應 icon）
- [ ] 鍵盤送出支援（Enter 搜尋）
- [ ] 搜尋紀錄或城市建議列表

## 已完成

- [x] Flutter 專案建立
- [x] Task 1：專案基礎架構設定
- [x] Task 2：資料層 - API Model 與 Repository
- [x] Task 3：Domain 層 - 天氣資料整理
- [x] Task 4：狀態管理 - Riverpod Provider
- [x] Task 5：UI - 搜尋頁面與四個 Widget
- [x] Task 6：錯誤處理完善（已於 Task 2 Repository 中實作）
