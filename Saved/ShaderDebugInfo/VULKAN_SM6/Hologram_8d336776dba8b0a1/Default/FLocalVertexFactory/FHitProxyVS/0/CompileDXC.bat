@ECHO OFF
SET DXC="/run/media/alphaspectre/sda1/Unreal Engine/Instances/dev-5.4.4/Engine/Binaries/ThirdParty/ShaderConductor/Win64/dxc.exe"
SET SPIRVCROSS="spirv-cross.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "/run/media/alphaspectre/sda1/Unreal Engine/Instances/dev-5.4.4/Engine/Binaries/ThirdParty/ShaderConductor/Win64"
	GOTO :END
)
ECHO Compiling with DXC...
%DXC% -E Main -T vs_6_2 -spirv -Qunused-arguments -HV 2018 -fvk-use-scalar-layout -fspv-svposition-implicit-invariant -fspv-target-env=vulkan1.3 -Fo HitProxyVertexShader.DXC.spv HitProxyVertexShader.usf
WHERE %SPIRVCROSS%
IF %ERRORLEVEL% NEQ 0 (
	ECHO spirv-cross.exe not found in Path environment variable, please build it from source https://github.com/KhronosGroup/SPIRV-Cross
	GOTO :END
)
ECHO Translating SPIRV back to glsl...
%SPIRVCROSS% --vulkan-semantics --output HitProxyVertexShader.SPV.glsl HitProxyVertexShader.DXC.spv
:END
PAUSE
