Webcad Client Signer
---

An installer around EgaClientSigner.jar with bundled JRE support.

## Prequisites
- You need [Inno Setup](http://jrsoftware.org/isinfo.php) to build installer.

## Build Steps
- Place desired JRE under `jre32` and `jre64`, 1.8.0 is used at the time of writing. (Must be placed to include `{jre32 or jre64}/bin/java.exe`)
- Extract [Ega Packet.zip](http://sign.webcad.com.tr/ApplicationsData/ECSVCP/NewRelease/EgaPacket.zip) contents under `ega` folder.
- Run Inno Setup.
- Click build button.
- Setup will be constructed as `WebcadClientSigner-setup-x86.exe` and `WebcadClientSigner-setup-x64.exe`.
