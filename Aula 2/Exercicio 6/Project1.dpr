﻿<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
    <PropertyGroup>
        <ProjectGuid>{B80FD932-9DA7-4EBC-BD0F-1F7D661DD9F4}</ProjectGuid>
        <ProjectVersion>19.4</ProjectVersion>
        <FrameworkType>None</FrameworkType>
        <Base>True</Base>
        <Config Condition="'$(Config)'==''">Debug</Config>
        <Platform Condition="'$(Platform)'==''">Win32</Platform>
        <TargetedPlatforms>1</TargetedPlatforms>
        <AppType>Console</AppType>
        <MainSource>Project1.dpr</MainSource>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Base' or '$(Base)'!=''">
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Android' and '$(Base)'=='true') or '$(Base_Android)'!=''">
        <Base_Android>true</Base_Android>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Android64' and '$(Base)'=='true') or '$(Base_Android64)'!=''">
        <Base_Android64>true</Base_Android64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Base)'=='true') or '$(Base_Win32)'!=''">
        <Base_Win32>true</Base_Win32>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win64' and '$(Base)'=='true') or '$(Base_Win64)'!=''">
        <Base_Win64>true</Base_Win64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Debug' or '$(Cfg_1)'!=''">
        <Cfg_1>true</Cfg_1>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Cfg_1)'=='true') or '$(Cfg_1_Win32)'!=''">
        <Cfg_1_Win32>true</Cfg_1_Win32>
        <CfgParent>Cfg_1</CfgParent>
        <Cfg_1>true</Cfg_1>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Release' or '$(Cfg_2)'!=''">
        <Cfg_2>true</Cfg_2>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base)'!=''">
        <DCC_DcuOutput>.\$(Platform)\$(Config)</DCC_DcuOutput>
        <DCC_ExeOutput>.\$(Platform)\$(Config)</DCC_ExeOutput>
        <DCC_E>false</DCC_E>
        <DCC_N>false</DCC_N>
        <DCC_S>false</DCC_S>
        <DCC_F>false</DCC_F>
        <DCC_K>false</DCC_K>
        <DCC_Namespace>System;Xml;Data;Datasnap;Web;Soap;$(DCC_Namespace)</DCC_Namespace>
        <SanitizedProjectName>Project1</SanitizedProjectName>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Android)'!=''">
        <Android_LauncherIcon36>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_36x36.png</Android_LauncherIcon36>
        <Android_LauncherIcon48>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_48x48.png</Android_LauncherIcon48>
        <Android_LauncherIcon72>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_72x72.png</Android_LauncherIcon72>
        <Android_LauncherIcon96>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_96x96.png</Android_LauncherIcon96>
        <Android_LauncherIcon144>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_144x144.png</Android_LauncherIcon144>
        <Android_LauncherIcon192>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_192x192.png</Android_LauncherIcon192>
        <Android_SplashImage426>$(BDS)\bin\Artwork\Android\FM_SplashImage_426x320.png</Android_SplashImage426>
        <Android_SplashImage470>$(BDS)\bin\Artwork\Android\FM_SplashImage_470x320.png</Android_SplashImage470>
        <Android_SplashImage640>$(BDS)\bin\Artwork\Android\FM_SplashImage_640x480.png</Android_SplashImage640>
        <Android_SplashImage960>$(BDS)\bin\Artwork\Android\FM_SplashImage_960x720.png</Android_SplashImage960>
        <Android_NotificationIcon24>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_24x24.png</Android_NotificationIcon24>
        <Android_NotificationIcon36>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_36x36.png</Android_NotificationIcon36>
        <Android_NotificationIcon48>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_48x48.png</Android_NotificationIcon48>
        <Android_NotificationIcon72>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_72x72.png</Android_NotificationIcon72>
        <Android_NotificationIcon96>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_96x96.png</Android_NotificationIcon96>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Android64)'!=''">
        <Android_LauncherIcon36>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_36x36.png</Android_LauncherIcon36>
        <Android_LauncherIcon48>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_48x48.png</Android_LauncherIcon48>
        <Android_LauncherIcon72>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_72x72.png</Android_LauncherIcon72>
        <Android_LauncherIcon96>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_96x96.png</Android_LauncherIcon96>
        <Android_LauncherIcon144>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_144x144.png</Android_LauncherIcon144>
        <Android_LauncherIcon192>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_192x192.png</Android_LauncherIcon192>
        <Android_SplashImage426>$(BDS)\bin\Artwork\Android\FM_SplashImage_426x320.png</Android_SplashImage426>
        <Android_SplashImage470>$(BDS)\bin\Artwork\Android\FM_SplashImage_470x320.png</Android_SplashImage470>
        <Android_SplashImage640>$(BDS)\bin\Artwork\Android\FM_SplashImage_640x480.png</Android_SplashImage640>
        <Android_SplashImage960>$(BDS)\bin\Artwork\Android\FM_SplashImage_960x720.png</Android_SplashImage960>
        <Android_NotificationIcon24>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_24x24.png</Android_NotificationIcon24>
        <Android_NotificationIcon36>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_36x36.png</Android_NotificationIcon36>
        <Android_NotificationIcon48>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_48x48.png</Android_NotificationIcon48>
        <Android_NotificationIcon72>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_72x72.png</Android_NotificationIcon72>
        <Android_NotificationIcon96>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_96x96.png</Android_NotificationIcon96>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Win32)'!=''">
        <DCC_UsePackage>vclwinx;DataSnapServer;fmx;emshosting;vclie;DbxCommonDriver;bindengine;IndyIPCommon;VCLRESTComponents;DBXMSSQLDriver;FireDACCommonODBC;emsclient;FireDACCommonDriver;appanalytics;IndyProtocols;vclx;IndyIPClient;dbxcds;vcledge;bindcompvclwinx;emsedge;bindcompfmx;DBXFirebirdDriver;inetdb;FireDACSqliteDriver;DbxClientDriver;FireDACASADriver;soapmidas;vclactnband;fmxFireDAC;dbexpress;FireDACInfxDriver;DBXMySQLDriver;VclSmp;inet;DataSnapCommon;vcltouch;fmxase;DBXOdbcDriver;dbrtl;FireDACDBXDriver;FireDACOracleDriver;fmxdae;FireDACMSAccDriver;CustomIPTransport;FireDACMSSQLDriver;DataSnapIndy10ServerTransport;DataSnapConnectors;vcldsnap;DBXInterBaseDriver;FireDACMongoDBDriver;IndySystem;FireDACTDataDriver;vcldb;vclFireDAC;bindcomp;FireDACCommon;DataSnapServerMidas;FireDACODBCDriver;emsserverresource;IndyCore;RESTBackendComponents;bindcompdbx;rtl;FireDACMySQLDriver;FireDACADSDriver;RESTComponents;DBXSqliteDriver;vcl;IndyIPServer;dsnapxml;dsnapcon;DataSnapClient;DataSnapProviderClient;adortl;DBXSybaseASEDriver;DBXDb2Driver;vclimg;DataSnapFireDAC;emsclientfiredac;FireDACPgDriver;FireDAC;FireDACDSDriver;inetdbxpress;xmlrtl;tethering;bindcompvcl;dsnap;CloudService;DBXSybaseASADriver;DBXOracleDriver;FireDACDb2Driver;DBXInformixDriver;fmxobj;bindcompvclsmp;DataSnapNativeClient;DatasnapConnectorsFreePascal;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <DCC_Namespace>Winapi;System.Win;Data.Win;Datasnap.Win;Web.Win;Soap.Win;Xml.Win;Bde;$(DCC_Namespace)</DCC_Namespace>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_Keys>CompanyName=;FileDescription=$(MSBuildProjectName);FileVersion=1.0.0.0;InternalName=;LegalCopyright=;LegalTrademarks=;OriginalFilename=;ProgramID=com.embarcadero.$(MSBuildProjectName);ProductName=$(MSBuildProjectName);ProductVersion=1.0.0.0;Comments=</VerInfo_Keys>
        <VerInfo_Locale>1033</VerInfo_Locale>
        <DCC_ConsoleTarget>true</DCC_ConsoleTarget>
        <UWP_DelphiLogo44>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_44.png</UWP_DelphiLogo44>
        <UWP_DelphiLogo150>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_150.png</UWP_DelphiLogo150>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Win64)'!=''">
        <DCC_UsePackage>vclwinx;DataSnapServer;fmx;emshosting;vclie;DbxCommonDriver;bindengine;IndyIPCommon;VCLRESTComponents;DBXMSSQLDriver;FireDACCommonODBC;emsclient;FireDACCommonDriver;appanalytics;IndyProtocols;vclx;IndyIPClient;dbxcds;vcledge;bindcompvclwinx;emsedge;bindcompfmx;DBXFirebirdDriver;inetdb;FireDACSqliteDriver;DbxClientDriver;FireDACASADriver;soapmidas;vclactnband;fmxFireDAC;dbexpress;FireDACInfxDriver;DBXMySQLDriver;VclSmp;inet;DataSnapCommon;vcltouch;fmxase;DBXOdbcDriver;dbrtl;FireDACDBXDriver;FireDACOracleDriver;fmxdae;FireDACMSAccDriver;CustomIPTransport;FireDACMSSQLDriver;DataSnapIndy10ServerTransport;DataSnapConnectors;vcldsnap;DBXInterBaseDriver;FireDACMongoDBDriver;IndySystem;FireDACTDataDriver;vcldb;vclFireDAC;bindcomp;FireDACCommon;DataSnapServerMidas;FireDACODBCDriver;emsserverresource;IndyCore;RESTBackendComponents;bindcompdbx;rtl;FireDACMySQLDriver;FireDACADSDriver;RESTComponents;DBXSqliteDriver;vcl;IndyIPServer;dsnapxml;dsnapcon;DataSnapClient;DataSnapProviderClient;adortl;DBXSybaseASEDriver;DBXDb2Driver;vclimg;DataSnapFireDAC;emsclientfiredac;FireDACPgDriver;FireDAC;FireDACDSDriver;inetdbxpress;xmlrtl;tethering;bindcompvcl;dsnap;CloudService;DBXSybaseASADriver;DBXOracleDriver;FireDACDb2Driver;DBXInformixDriver;fmxobj;bindcompvclsmp;DataSnapNativeClient;DatasnapConnectorsFreePascal;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <DCC_ConsoleTarget>true</DCC_ConsoleTarget>
        <UWP_DelphiLogo44>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_44.png</UWP_DelphiLogo44>
        <UWP_DelphiLogo150>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_150.png</UWP_DelphiLogo150>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1)'!=''">
        <DCC_Define>DEBUG;$(DCC_Define)</DCC_Define>
        <DCC_DebugDCUs>true</DCC_DebugDCUs>
        <DCC_Optimize>false</DCC_Optimize>
        <DCC_GenerateStackFrames>true</DCC_GenerateStackFrames>
        <DCC_DebugInfoInExe>true</DCC_DebugInfoInExe>
        <DCC_RemoteDebug>true</DCC_RemoteDebug>
        <DCC_IntegerOverflowCheck>true</DCC_IntegerOverflowCheck>
        <DCC_RangeChecking>true</DCC_RangeChecking>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1_Win32)'!=''">
        <DCC_RemoteDebug>false</DCC_RemoteDebug>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_2)'!=''">
        <DCC_LocalDebugSymbols>false</DCC_LocalDebugSymbols>
        <DCC_Define>RELEASE;$(DCC_Define)</DCC_Define>
        <DCC_SymbolReferenceInfo>0</DCC_SymbolReferenceInfo>
        <DCC_DebugInformation>0</DCC_DebugInformation>
    </PropertyGroup>
    <ItemGroup>
        <DelphiCompile Include="$(MainSource)">
            <MainSource>MainSource</MainSource>
        </DelphiCompile>
        <BuildConfiguration Include="Base">
            <Key>Base</Key>
        </BuildConfiguration>
        <BuildConfiguration Include="Debug">
            <Key>Cfg_1</Key>
            <CfgParent>Base</CfgParent>
        </BuildConfiguration>
        <BuildConfiguration Include="Release">
            <Key>Cfg_2</Key>
            <CfgParent>Base</CfgParent>
        </BuildConfiguration>
    </ItemGroup>
    <ProjectExtensions>
        <Borland.Personality>Delphi.Personality.12</Borland.Personality>
        <Borland.ProjectType>Application</Borland.ProjectType>
        <BorlandProject>
            <Delphi.Personality>
                <Source>
                    <Source Name="MainSource">Project1.dpr</Source>
                </Source>
            </Delphi.Personality>
            <Deployment Version="3"/>
            <Platforms>
                <Platform value="Android">False</Platform>
                <Platform value="Android64">False</Platform>
                <Platform value="Win32">True</Platform>
                <Platform value="Win64">False</Platform>
            </Platforms>
        </BorlandProject>
        <ProjectFileVersion>12</ProjectFileVersion>
    </ProjectExtensions>
    <Import Project="$(BDS)\Bin\CodeGear.Delphi.Targets" Condition="Exists('$(BDS)\Bin\CodeGear.Delphi.Targets')"/>
    <Import Project="$(APPDATA)\Embarcadero\$(BDSAPPDATABASEDIR)\$(PRODUCTVERSION)\UserTools.proj" Condition="Exists('$(APPDATA)\Embarcadero\$(BDSAPPDATABASEDIR)\$(PRODUCTVERSION)\UserTools.proj')"/>
    <Import Project="$(MSBuildProjectName).deployproj" Condition="Exists('$(MSBuildProjectName).deployproj')"/>
</Project>
