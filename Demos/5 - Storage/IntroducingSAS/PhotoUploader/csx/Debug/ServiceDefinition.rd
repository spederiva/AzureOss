<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="PhotoUploader" generation="1" functional="0" release="0" Id="5b896304-5f6d-4d59-a961-095677c715e5" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="PhotoUploaderGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="PhotoUploader_WebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/PhotoUploader/PhotoUploaderGroup/LB:PhotoUploader_WebRole:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/PhotoUploader/PhotoUploaderGroup/LB:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapCertificate|PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapCertificate|PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
          </maps>
        </aCS>
        <aCS name="Certificate|QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapCertificate|QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapCertificate|QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:ContainerName" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:ContainerName" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRole:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRole:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="PhotoUploader_WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapPhotoUploader_WebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRole:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRole:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="QueueProcessor_WorkerRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/PhotoUploader/PhotoUploaderGroup/MapQueueProcessor_WorkerRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <sFSwitchChannel name="IE:PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="IE:PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="IE:PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="IE:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="IE:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="IE:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder" />
          </toPorts>
        </sFSwitchChannel>
        <lBChannel name="LB:PhotoUploader_WebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="SW:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCertificate|PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" kind="Identity">
          <certificate>
            <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
          </certificate>
        </map>
        <map name="MapCertificate|QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCertificate|QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" kind="Identity">
          <certificate>
            <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
          </certificate>
        </map>
        <map name="MapPhotoUploader_WebRole:ContainerName" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/ContainerName" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRole:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapPhotoUploader_WebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRoleInstances" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRole:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapQueueProcessor_WorkerRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="PhotoUploader_WebRole" generation="1" functional="0" release="0" software="D:\Azure\Storage\IntroducingSAS\PhotoUploader\csx\Debug\roles\PhotoUploader_WebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/PhotoUploader/PhotoUploaderGroup/SW:PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/PhotoUploader/PhotoUploaderGroup/SW:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="ContainerName" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;PhotoUploader_WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PhotoUploader_WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;QueueProcessor_WorkerRole&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
              <storedCertificate name="Stored1Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="QueueProcessor_WorkerRole" generation="1" functional="0" release="0" software="D:\Azure\Storage\IntroducingSAS\PhotoUploader\csx\Debug\roles\QueueProcessor_WorkerRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/PhotoUploader/PhotoUploaderGroup/SW:PhotoUploader_WebRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/PhotoUploader/PhotoUploaderGroup/SW:QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.ClientThumbprint" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Version" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.ServerThumbprint" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;QueueProcessor_WorkerRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PhotoUploader_WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;QueueProcessor_WorkerRole&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.FileUpload&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
              <storedCertificate name="Stored1Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole/Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="PhotoUploader_WebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="QueueProcessor_WorkerRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="PhotoUploader_WebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="QueueProcessor_WorkerRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="PhotoUploader_WebRoleInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="QueueProcessor_WorkerRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="9414a331-f2fc-4290-bd63-c35cea3d7c83" ref="Microsoft.RedDog.Contract\ServiceContract\PhotoUploaderContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="3221c365-995c-47b3-9d44-4fe80faa5de1" ref="Microsoft.RedDog.Contract\Interface\PhotoUploader_WebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/PhotoUploader_WebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="d41f9485-2aad-4e5e-8527-52e34c6fb566" ref="Microsoft.RedDog.Contract\Interface\QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/PhotoUploader/PhotoUploaderGroup/QueueProcessor_WorkerRole:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>