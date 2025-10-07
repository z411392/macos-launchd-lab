### pmset
比較麻煩的是，macos 待機時，排程不會執行。

#### 喚醒
要用 pmset 將 macos 喚醒：
```bash
sudo pmset repeat wakeorpoweron MTWRFSU 02:00:00
```

#### 清除
清除 pmset 排定的計劃要用：
```bash
sudo pmset repeat cancel
```

壞消息是，這個指令會一次清除所有 pmset 計畫，你不能單獨刪除某個特定的計劃。
好消息是，系統排定的計畫不會被這個指令清除。

### plist
plist 排課除了指定時刻以外，還能指定每 n 秒執行。

指定每 n 秒執行時，不能精確指定從哪一個時刻開始。