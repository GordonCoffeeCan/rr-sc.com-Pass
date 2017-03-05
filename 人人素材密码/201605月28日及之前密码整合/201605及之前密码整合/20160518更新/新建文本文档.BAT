@echo off
setlocal enabledelayedexpansion
set "v1=一站资源网 http://www.ezhanzy.com"
set "v2=本资源来源于 www.ezhanzy.com 由网源工作室整理！更多更全的资源请到网站进行搜索查找！ 百度“一站资源”即可找到本站！"
for %%a in (*.txt) do (
findstr /i /v /c:"!v1!" "%%~a">new.tmp
findstr /i /v /c:"!v2!" new.tmp>"%%~a"
del new.tmp)