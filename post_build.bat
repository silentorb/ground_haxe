call target.bat

if %TARGET% == nodejs (
	copy "%1\output\nodejs\metahub.js" E:\Websites\vineyard\node_modules\vineyard-metahub\metahub3.js
)
if %TARGET% == php (
	xcopy "%1\output\php\lib" E:\Websites\vineyard-drupal\sites\all\modules\custom\vineyard\lib\ground\ /E /Y
REM 	xcopy "%1\hxclasses\metahub" ..\haxe\ground\extern\metahub\ /E /Y
)
