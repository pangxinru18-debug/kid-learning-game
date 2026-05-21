@echo off
title 学习乐园 - 手机连接中...
echo.
echo    📝  快乐学习乐园
echo    ========================
echo.
echo    正在启动服务器...
echo.
echo    请在手机上打开浏览器，输入：
echo.
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "IPv4" ^| findstr "192."') do (
  set IP=%%a
  goto :found
)
:found
set IP=%IP: =%
echo    ◆  http://%IP%:3456
echo.
echo    手机打开后，点浏览器菜单 → "添加到主屏幕"
echo    以后孩子点桌面图标就能直接打开！
echo.
echo    按 Ctrl+C 可以关闭服务器
echo    ========================
echo.
npx serve "D:\software\Claude\kid-learning-game" -p 3456 --no-clipboard
pause
