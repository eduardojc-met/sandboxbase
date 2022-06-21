@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  sandbox-runtime startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and SANDBOX_RUNTIME_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dfile.encoding=UTF-8"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\worker.cli.jar;%APP_HOME%\lib\micronaut-runtime-1.3.5.jar;%APP_HOME%\lib\worker.core-server.jar;%APP_HOME%\lib\micronaut-http-1.3.5.jar;%APP_HOME%\lib\micronaut-aop-1.3.5.jar;%APP_HOME%\lib\micronaut-inject-1.3.5.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\worker.core.jar;%APP_HOME%\lib\worker.models.api.jar;%APP_HOME%\lib\micronaut-core-1.3.5.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\picocli-3.9.5.jar;%APP_HOME%\lib\libs.jliquid-1.0.jar;%APP_HOME%\lib\jaxws-rt-2.3.0.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\snakeyaml-1.26.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.10.3.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.10.3.jar;%APP_HOME%\lib\jackson-databind-2.10.3.jar;%APP_HOME%\lib\rxjava-2.2.10.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\swagger-annotations-1.5.8.jar;%APP_HOME%\lib\jackson-annotations-2.10.3.jar;%APP_HOME%\lib\libs.cxf-uri-template.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\commons-lang3-3.2.jar;%APP_HOME%\lib\js-20.1.0.jar;%APP_HOME%\lib\regex-20.1.0.jar;%APP_HOME%\lib\truffle-api-20.1.0.jar;%APP_HOME%\lib\graal-sdk-20.1.0.jar;%APP_HOME%\lib\icu4j-66.1.jar;%APP_HOME%\lib\netty-codec-http-4.1.48.Final.jar;%APP_HOME%\lib\netty-handler-4.1.48.Final.jar;%APP_HOME%\lib\netty-codec-4.1.48.Final.jar;%APP_HOME%\lib\netty-transport-4.1.48.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.48.Final.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\jackson-core-2.10.3.jar;%APP_HOME%\lib\antlr-3.4.jar;%APP_HOME%\lib\rt-2.3.0.jar;%APP_HOME%\lib\jaxws-api-2.3.0.jar;%APP_HOME%\lib\jaxb-api-2.3.0.jar;%APP_HOME%\lib\streambuffer-1.5.4.jar;%APP_HOME%\lib\saaj-impl-1.4.0.jar;%APP_HOME%\lib\stax-ex-1.7.8.jar;%APP_HOME%\lib\activation-1.1.jar;%APP_HOME%\lib\jaxb-impl-2.3.0.jar;%APP_HOME%\lib\jaxb-core-2.3.0.jar;%APP_HOME%\lib\jsoup-1.8.3.jar;%APP_HOME%\lib\asm-commons-7.1.jar;%APP_HOME%\lib\asm-util-7.1.jar;%APP_HOME%\lib\asm-analysis-7.1.jar;%APP_HOME%\lib\asm-tree-7.1.jar;%APP_HOME%\lib\asm-7.1.jar;%APP_HOME%\lib\netty-resolver-4.1.48.Final.jar;%APP_HOME%\lib\netty-common-4.1.48.Final.jar;%APP_HOME%\lib\ST4-4.0.4.jar;%APP_HOME%\lib\antlr-runtime-3.4.jar;%APP_HOME%\lib\policy-2.7.2.jar;%APP_HOME%\lib\gmbal-api-only-3.1.0-b001.jar;%APP_HOME%\lib\mimepull-1.9.7.jar;%APP_HOME%\lib\woodstox-core-asl-4.4.1.jar;%APP_HOME%\lib\stax2-api-3.1.4.jar;%APP_HOME%\lib\resolver-20050927.jar;%APP_HOME%\lib\javax.xml.soap-api-1.4.0.jar;%APP_HOME%\lib\jsr181-api-1.0-MR1.jar;%APP_HOME%\lib\FastInfoset-1.2.13.jar;%APP_HOME%\lib\ha-api-3.1.9.jar;%APP_HOME%\lib\stringtemplate-3.2.1.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\management-api-3.0.0-b012.jar;%APP_HOME%\lib\stax-api-1.0-2.jar

@rem Execute sandbox-runtime
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SANDBOX_RUNTIME_OPTS%  -classpath "%CLASSPATH%" com.sandbox.worker.cli.CLIMain %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SANDBOX_RUNTIME_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SANDBOX_RUNTIME_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
