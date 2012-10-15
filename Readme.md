# Using GPUImage and ImagePickerWithFilters

### 1. Drag ImagePickerWithFilters folder into project

	The foder includes 
	- classes 
	- xib file
	- resources (images and curve files)
	
### 2. Add GPUImage libraries into project 

	1. Download GPUImage library (open project folder in terminal):
		- git module add git://github.com/BradLarson/GPUImage.git
	2. Add GPUImage framework to your own project:
		Drag GPUImage->framework->GPUImage.xcodeproj to project

### 3. Add project dependency
	1. Add dependency to GPUImage in project "Build Phases" -> "Target Dependencies"
	2. Add GPUImage .a library to project framework
		Drag libGPUImage.a from GPUImage.xcodeproj -> Products to "Build Phases" -> "Link Binary With Libraries".
		
### 4. Set Build Settings
	1. Set "Header Search Paths" value to path to GPUImage framework folder: "GPUImage/framework/**" (recursive)
	2. Set "Other linker flags" value to "-ObjC"