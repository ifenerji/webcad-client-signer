Webcad Client Signer
---

An installer around launcher wrapper of EgaClientSigner.jar with bundled JRE and single instance support.

## Prequisites
- You need [launch4j](http://launch4j.sourceforge.net/) and [Inno Setup](http://jrsoftware.org/isinfo.php) to build wrapper and installer.

## Build Steps
- Place desired JRE under `out/jre`, 1.8.0 is used at the time of writing. (Must be placed to include `out/jre/bin/java.exe`)
- Place `EgaClientSigner_lib/*` under `out/EgaClientSigner_lib/`.
- Place EcsSettings.properties under `out/`.
- Place EgaClientSigner.jar on root folder (`./`).
- Run launch4j.
- Load launch4j.xml config.
- Click build button.
- Run Inno Setup.
- Click build button.
- Setup will be constructed as `WebcadClientSigner-setup.exe`.
