//Maya ASCII 2011 scene
//Name: mirror_association_issues.ma
//Last modified: Wed, Dec 04, 2013 06:30:34 PM
//Codeset: 1257
requires maya "2011";
requires "stereoCamera" "10.0";
requires "ngSkinTools" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 Hotfix 2 x64";
fileInfo "cutIdentifier" "201006030309-775258";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6135651682609478e-015 1.3877787807814457e-017 11.867212147313767 ;
	setAttr ".rpt" -type "double3" 2.8904696945812325e-018 -1.2334231740465466e-017 
		1.0538382414922127e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 11.867212624150925;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.6106746985663668e-015 1.5435560673489905e-018 -4.76837158203125e-007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere1";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape1Orig" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "RightUpperLip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3 0 0 1;
	setAttr ".radi" 2;
createNode joint -n "UpperLip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 2;
createNode joint -n "LeftUpperLip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 0 0 1;
	setAttr ".radi" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polySphere -n "polySphere1";
	setAttr ".r" 3;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n"
		+ "            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n"
		+ "                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n"
		+ "                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n"
		+ "                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	setAttr -s 382 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.65169233738959254 0.12345547917149358 
		0.22485218343891383;
	setAttr -s 3 ".wl[1].w[0:2]"  0.65587465071910311 0.12919735380185121 
		0.21492799547904573;
	setAttr -s 3 ".wl[2].w[0:2]"  0.66099834634437948 0.13859098652640287 
		0.20041066712921762;
	setAttr -s 3 ".wl[3].w[0:2]"  0.66510631715765378 0.15129551124995863 
		0.18359817159238759;
	setAttr -s 3 ".wl[4].w[0:2]"  0.66666664197265613 0.16666667901367194 
		0.16666667901367194;
	setAttr -s 3 ".wl[5].w[0:2]"  0.66510631781144369 0.18359817125772152 
		0.15129551093083485;
	setAttr -s 3 ".wl[6].w[0:2]"  0.66099835125291961 0.20041065783064374 
		0.13859099091643678;
	setAttr -s 3 ".wl[7].w[0:2]"  0.65587466315740406 0.21492797179226397 
		0.12919736505033194;
	setAttr -s 3 ".wl[8].w[0:2]"  0.65169235107054135 0.22485215881921566 
		0.12345549011024293;
	setAttr -s 3 ".wl[9].w[0:2]"  0.65008608646357779 0.22838801599892825 
		0.12152589753749407;
	setAttr -s 3 ".wl[10].w[0:2]"  0.65169235107054135 0.22485215881921566 
		0.12345549011024293;
	setAttr -s 3 ".wl[11].w[0:2]"  0.65587466540961847 0.2149279671792062 
		0.1291973674111753;
	setAttr -s 3 ".wl[12].w[0:2]"  0.66099835398174511 0.20041065303815012 
		0.13859099298010491;
	setAttr -s 3 ".wl[13].w[0:2]"  0.66510632236247558 0.18359816393764183 
		0.15129551369988264;
	setAttr -s 3 ".wl[14].w[0:2]"  0.66666664611675541 0.16666667849565919 
		0.16666667538758539;
	setAttr -s 3 ".wl[15].w[0:2]"  0.66510632429834871 0.15129551774542516 
		0.18359815795622617;
	setAttr -s 3 ".wl[16].w[0:2]"  0.66099835779205962 0.13859099789553539 
		0.20041064431240502;
	setAttr -s 3 ".wl[17].w[0:2]"  0.65587467030645552 0.12919737194761716 
		0.21492795774592727;
	setAttr -s 3 ".wl[18].w[0:2]"  0.65169236189324486 0.12345549891847937 
		0.22485213918827579;
	setAttr -s 3 ".wl[19].w[0:2]"  0.65008609764057468 0.12152590626322005 
		0.22838799609620533;
	setAttr -s 3 ".wl[20].w[0:2]"  0.605786902977553 0.090461418369505886 
		0.303751678652941;
	setAttr -s 3 ".wl[21].w[0:2]"  0.62326859356814746 0.099722971642719885 
		0.27700843478913262;
	setAttr -s 3 ".wl[22].w[0:2]"  0.64418887536289915 0.11534163283491491 
		0.24046949180218585;
	setAttr -s 3 ".wl[23].w[0:2]"  0.66055058133897682 0.13760306395682023 
		0.20184635470420295;
	setAttr -s 3 ".wl[24].w[0:2]"  0.66666662801519883 0.16666668599240059 
		0.16666668599240059;
	setAttr -s 3 ".wl[25].w[0:2]"  0.66055058388565813 0.20184635337404577 
		0.1376030627402961;
	setAttr -s 3 ".wl[26].w[0:2]"  0.64418888802126295 0.24046947792489298 
		0.11534163405384398;
	setAttr -s 3 ".wl[27].w[0:2]"  0.62326864158571782 0.27700837090958214 
		0.099722987504700156;
	setAttr -s 3 ".wl[28].w[0:2]"  0.60578695753184841 0.30375160917519139 
		0.090461433292960219;
	setAttr -s 3 ".wl[29].w[0:2]"  0.59897993385083226 0.31363006844265479 
		0.087389997706512942;
	setAttr -s 3 ".wl[30].w[0:2]"  0.60578695753184841 0.30375160917519139 
		0.090461433292960219;
	setAttr -s 3 ".wl[31].w[0:2]"  0.62326865201066872 0.27700835769902876 
		0.099722990290302529;
	setAttr -s 3 ".wl[32].w[0:2]"  0.64418890719128163 0.24046945345174045 
		0.11534163935697798;
	setAttr -s 3 ".wl[33].w[0:2]"  0.66055059915420344 0.20184633527759305 
		0.1376030655682034;
	setAttr -s 3 ".wl[34].w[0:2]"  0.66666664165879208 0.16666668224041212 
		0.16666667610079586;
	setAttr -s 3 ".wl[35].w[0:2]"  0.66055060678270483 0.13760307204568314 
		0.20184632117161203;
	setAttr -s 3 ".wl[36].w[0:2]"  0.64418892226349456 0.1153416465702955 
		0.24046943116620986;
	setAttr -s 3 ".wl[37].w[0:2]"  0.6232686805473886 0.09972299993642407 
		0.27700831951618732;
	setAttr -s 3 ".wl[38].w[0:2]"  0.60578700104271732 0.090461445296175724 
		0.30375155366110701;
	setAttr -s 3 ".wl[39].w[0:2]"  0.59897997898614574 0.087390009597275803 
		0.31363001141657842;
	setAttr -s 3 ".wl[40].w[0:2]"  0.52736370575541702 0.064313678735761354 
		0.40832261550882176;
	setAttr -s 3 ".wl[41].w[0:2]"  0.56875772699685678 0.076058643477106502 
		0.35518362952603671;
	setAttr -s 3 ".wl[42].w[0:2]"  0.61694886489874157 0.096103582169577748 
		0.28694755293168067;
	setAttr -s 3 ".wl[43].w[0:2]"  0.65337347067050766 0.12562334583293033 
		0.22100318349656198;
	setAttr -s 3 ".wl[44].w[0:2]"  0.6666666087688391 0.16666669561558045 
		0.16666669561558045;
	setAttr -s 3 ".wl[45].w[0:2]"  0.65337347797979228 0.22100317962291779 
		0.12562334239728987;
	setAttr -s 3 ".wl[46].w[0:2]"  0.61694890473348074 0.28694750834179072 
		0.096103586924728618;
	setAttr -s 3 ".wl[47].w[0:2]"  0.5687578406602567 0.35518349833765062 
		0.076058661002092687;
	setAttr -s 3 ".wl[48].w[0:2]"  0.52736386470847829 0.40832243485021674 
		0.064313700441305036;
	setAttr -s 3 ".wl[49].w[0:2]"  0.51103180847110341 0.42853649081220058 
		0.060431700716695964;
	setAttr -s 3 ".wl[50].w[0:2]"  0.52736386470847829 0.40832243485021674 
		0.064313700441305036;
	setAttr -s 3 ".wl[51].w[0:2]"  0.56875784214079117 0.35518349768226998 
		0.076058660176938908;
	setAttr -s 3 ".wl[52].w[0:2]"  0.61694893487785263 0.28694747673247811 
		0.096103588389669301;
	setAttr -s 3 ".wl[53].w[0:2]"  0.65337350991040111 0.22100314889359396 
		0.12562334119600493;
	setAttr -s 3 ".wl[54].w[0:2]"  0.6666666408398858 0.16666668409004795 
		0.16666667507006627;
	setAttr -s 3 ".wl[55].w[0:2]"  0.65337352722243902 0.1256233468660013 
		0.22100312591155968;
	setAttr -s 3 ".wl[56].w[0:2]"  0.61694896933076271 0.0961035957025628 
		0.28694743496667457;
	setAttr -s 3 ".wl[57].w[0:2]"  0.56875792590778995 0.076058674145835212 
		0.35518339994637482;
	setAttr -s 3 ".wl[58].w[0:2]"  0.52736392855687797 0.064313708922785262 
		0.40832236252033677;
	setAttr -s 3 ".wl[59].w[0:2]"  0.51103190741433291 0.060431713742968726 
		0.42853637884269841;
	setAttr -s 3 ".wl[60].w[0:2]"  0.41868479236384787 0.043065112041141579 
		0.53825009559501058;
	setAttr -s 3 ".wl[61].w[0:2]"  0.49414783174610122 0.056741645614040707 
		0.44911052263985807;
	setAttr -s 3 ".wl[62].w[0:2]"  0.58082544483859078 0.080209135199025006 
		0.33896541996238422;
	setAttr -s 3 ".wl[63].w[0:2]"  0.64418884454342973 0.11534165432095116 
		0.24046950113561918;
	setAttr -s 3 ".wl[64].w[0:2]"  0.66666658607644491 0.1666667069617776 
		0.1666667069617776;
	setAttr -s 3 ".wl[65].w[0:2]"  0.64418884454342973 0.24046950113561918 
		0.11534165432095116;
	setAttr -s 3 ".wl[66].w[0:2]"  0.58082548160375458 0.33896538376948421 
		0.080209134626761325;
	setAttr -s 3 ".wl[67].w[0:2]"  0.49414797212754391 0.44911036937610133 
		0.056741658496354805;
	setAttr -s 3 ".wl[68].w[0:2]"  0.41868498210140576 0.53824988962811005 
		0.043065128270484102;
	setAttr -s 3 ".wl[69].w[0:2]"  0.38903883626313984 0.57238229499861781 
		0.038578868738242372;
	setAttr -s 3 ".wl[70].w[0:2]"  0.41868498210140576 0.53824988962811005 
		0.043065128270484102;
	setAttr -s 3 ".wl[71].w[0:2]"  0.49414800801621317 0.44911033120579147 
		0.056741660777995431;
	setAttr -s 3 ".wl[72].w[0:2]"  0.58082554940850484 0.33896531409035285 
		0.080209136501142309;
	setAttr -s 3 ".wl[73].w[0:2]"  0.64418890338156842 0.24046945548556334 
		0.11534164113286824;
	setAttr -s 3 ".wl[74].w[0:2]"  0.66666663797975012 0.16666668684924682 
		0.16666667517100303;
	setAttr -s 3 ".wl[75].w[0:2]"  0.64418893207950001 0.11534164911418372 
		0.24046941880631628;
	setAttr -s 3 ".wl[76].w[0:2]"  0.58082560576209319 0.080209144413338818 
		0.33896524982456799;
	setAttr -s 3 ".wl[77].w[0:2]"  0.49414811250898999 0.056741671378671185 
		0.44911021611233876;
	setAttr -s 3 ".wl[78].w[0:2]"  0.41868513399489726 0.043065141433509833 
		0.53824972457159292;
	setAttr -s 3 ".wl[79].w[0:2]"  0.38903899110450213 0.038578881939840527 
		0.57238212695565727;
	setAttr -s 3 ".wl[80].w[0:2]"  0.29237855688186798 0.026130888875209271 
		0.68149055424292271;
	setAttr -s 3 ".wl[81].w[0:2]"  0.40546567440089348 0.041016181178001668 
		0.55351814442110492;
	setAttr -s 3 ".wl[82].w[0:2]"  0.53855137149376064 0.067184589099727021 
		0.39426403940651228;
	setAttr -s 3 ".wl[83].w[0:2]"  0.63382447843878897 0.1067216204260419 
		0.2594539011351692;
	setAttr -s 3 ".wl[84].w[0:2]"  0.66666658685732183 0.16666670657133906 
		0.16666670657133906;
	setAttr -s 3 ".wl[85].w[0:2]"  0.63382449962887877 0.25945388983035528 
		0.10672161054076602;
	setAttr -s 3 ".wl[86].w[0:2]"  0.53855145198841614 0.39426396287298376 
		0.06718458513860022;
	setAttr -s 3 ".wl[87].w[0:2]"  0.40546589976076053 0.55351790462644179 
		0.041016195612797658;
	setAttr -s 3 ".wl[88].w[0:2]"  0.2923787722926437 0.68149032546945232 
		0.02613090223790392;
	setAttr -s 3 ".wl[89].w[0:2]"  0.24999987646508803 0.72855352384112015 
		0.021446599693791823;
	setAttr -s 3 ".wl[90].w[0:2]"  0.2923787722926437 0.68149032546945232 
		0.02613090223790392;
	setAttr -s 3 ".wl[91].w[0:2]"  0.40546593644702739 0.55351786654666579 
		0.041016197006306841;
	setAttr -s 3 ".wl[92].w[0:2]"  0.53855152756762803 0.39426388791688727 
		0.067184584515484758;
	setAttr -s 3 ".wl[93].w[0:2]"  0.63382458683036003 0.25945382114334725 
		0.10672159202629279;
	setAttr -s 3 ".wl[94].w[0:2]"  0.66666666178505318 0.16666667613194791 
		0.16666666208299893;
	setAttr -s 3 ".wl[95].w[0:2]"  0.63382461046156391 0.10672160316764624 
		0.25945378637078986;
	setAttr -s 3 ".wl[96].w[0:2]"  0.53855159331592384 0.067184590568390878 
		0.39426381611568539;
	setAttr -s 3 ".wl[97].w[0:2]"  0.40546605000072489 0.041016205235997569 
		0.55351774476327753;
	setAttr -s 3 ".wl[98].w[0:2]"  0.29237899289199742 0.026130917018665677 
		0.68149009008933692;
	setAttr -s 3 ".wl[99].w[0:2]"  0.25000001695456581 0.021446608921902425 
		0.72855337412353183;
	setAttr -s 3 ".wl[100].w[0:2]"  0.1729489976166651 0.013810075522883412 
		0.81324092686045146;
	setAttr -s 3 ".wl[101].w[0:2]"  0.3138969699689545 0.028667473278092093 
		0.6574355567529534;
	setAttr -s 3 ".wl[102].w[0:2]"  0.49414781118876722 0.056741669945236363 
		0.44911051886599646;
	setAttr -s 3 ".wl[103].w[0:2]"  0.62326850378447818 0.099723029308393815 
		0.27700846690712799;
	setAttr -s 3 ".wl[104].w[0:2]"  0.66666651586354886 0.16666674206822557 
		0.16666674206822557;
	setAttr -s 3 ".wl[105].w[0:2]"  0.62326852698226842 0.27700845463257473 
		0.099723018385156875;
	setAttr -s 3 ".wl[106].w[0:2]"  0.49414789181573615 0.44911044414999418 
		0.056741664034269772;
	setAttr -s 3 ".wl[107].w[0:2]"  0.3138971725061393 0.65743534599057485 
		0.028667481503285887;
	setAttr -s 3 ".wl[108].w[0:2]"  0.17294920930837146 0.81324070398042758 
		0.013810086711200945;
	setAttr -s 3 ".wl[109].w[0:2]"  0.12609542065333773 0.86427174428315134 
		0.0096328350635109267;
	setAttr -s 3 ".wl[110].w[0:2]"  0.17294920930837146 0.81324070398042758 
		0.013810086711200945;
	setAttr -s 3 ".wl[111].w[0:2]"  0.31389720409535821 0.65743531373238584 
		0.028667482172255954;
	setAttr -s 3 ".wl[112].w[0:2]"  0.49414800373905921 0.44911033042061954 
		0.056741665840321268;
	setAttr -s 3 ".wl[113].w[0:2]"  0.62326863279919231 0.27700836786432309 
		0.099722999336484486;
	setAttr -s 3 ".wl[114].w[0:2]"  0.6666666301655636 0.1666666929540804 
		0.16666667688035597;
	setAttr -s 3 ".wl[115].w[0:2]"  0.62326868316464712 0.099722998704025539 
		0.27700831813132731;
	setAttr -s 3 ".wl[116].w[0:2]"  0.49414807534889171 0.056741670601855997 
		0.44911025404925231;
	setAttr -s 3 ".wl[117].w[0:2]"  0.31389734995524821 0.028667491165203649 
		0.65743515887954806;
	setAttr -s 3 ".wl[118].w[0:2]"  0.17294931676992509 0.013810092532793397 
		0.8132405906972815;
	setAttr -s 3 ".wl[119].w[0:2]"  0.12609551159124938 0.0096328401180084608 
		0.86427164829074221;
	setAttr -s 3 ".wl[120].w[0:2]"  0.084683690362892319 0.0062032526816978989 
		0.90911305695540989;
	setAttr -s 3 ".wl[121].w[0:2]"  0.2329693768834028 0.019667926208566777 
		0.74736269690803037;
	setAttr -s 3 ".wl[122].w[0:2]"  0.4525362012377836 0.048728512430977713 
		0.49873528633123865;
	setAttr -s 3 ".wl[123].w[0:2]"  0.61358269194757098 0.094311392200367744 
		0.29210591585206119;
	setAttr -s 3 ".wl[124].w[0:2]"  0.66666649150027246 0.16666675424986377 
		0.16666675424986377;
	setAttr -s 3 ".wl[125].w[0:2]"  0.61358271639291984 0.29210590309457551 
		0.094311380512504622;
	setAttr -s 3 ".wl[126].w[0:2]"  0.4525363132983673 0.4987351777592518 
		0.048728508942381003;
	setAttr -s 3 ".wl[127].w[0:2]"  0.23296953578417337 0.74736253338071601 
		0.019667930835110672;
	setAttr -s 3 ".wl[128].w[0:2]"  0.084683803364041396 0.90911293891191824 
		0.006203257724040393;
	setAttr -s 3 ".wl[129].w[0:2]"  0.045219288286407248 0.95161932314525233 
		0.0031613885683405259;
	setAttr -s 3 ".wl[130].w[0:2]"  0.084683803364041396 0.90911293891191824 
		0.006203257724040393;
	setAttr -s 3 ".wl[131].w[0:2]"  0.2329695924828534 0.74736247443763981 
		0.019667933079506813;
	setAttr -s 3 ".wl[132].w[0:2]"  0.45253638855156586 0.49873510977430557 
		0.048728501674128594;
	setAttr -s 3 ".wl[133].w[0:2]"  0.61358282977171053 0.29210581188897278 
		0.094311358339316587;
	setAttr -s 3 ".wl[134].w[0:2]"  0.66666661738616662 0.16666670015827184 
		0.1666666824555616;
	setAttr -s 3 ".wl[135].w[0:2]"  0.61358289425979939 0.094311359541854073 
		0.29210574619834656;
	setAttr -s 3 ".wl[136].w[0:2]"  0.45253649979307453 0.048728505599314027 
		0.4987349946076115;
	setAttr -s 3 ".wl[137].w[0:2]"  0.23296970588028038 0.019667937568301409 
		0.74736235655141814;
	setAttr -s 3 ".wl[138].w[0:2]"  0.084683857951405248 0.0062032600555619478 
		0.90911288199303286;
	setAttr -s 3 ".wl[139].w[0:2]"  0.045219345423957079 0.0031613913841029352 
		0.95161926319194012;
	setAttr -s 3 ".wl[140].w[0:2]"  0.03510569373243768 0.002419648406679699 
		0.9624746578608826;
	setAttr -s 3 ".wl[141].w[0:2]"  0.17294909840942613 0.013810089711726035 
		0.81324081187884789;
	setAttr -s 3 ".wl[142].w[0:2]"  0.41868481855601414 0.043065157512087809 
		0.53825002393189803;
	setAttr -s 3 ".wl[143].w[0:2]"  0.6057867868863539 0.090461491393325724 
		0.30375172172032044;
	setAttr -s 3 ".wl[144].w[0:2]"  0.66666644828986144 0.16666677585506931 
		0.16666677585506931;
	setAttr -s 3 ".wl[145].w[0:2]"  0.6057867868863539 0.30375172172032044 
		0.090461491393325724;
	setAttr -s 3 ".wl[146].w[0:2]"  0.41868491972061844 0.53824993503914675 
		0.043065145240234894;
	setAttr -s 3 ".wl[147].w[0:2]"  0.17294921149452527 0.81324069683350986 
		0.013810091671964944;
	setAttr -s 3 ".wl[148].w[0:2]"  0.035105749166969194 0.96247460041132049 
		0.0024196504217102988;
	setAttr -s 3 ".wl[149].w[0:2]"  0.0094849889812953711 0.98989208373059789 
		0.00062292728810676296;
	setAttr -s 3 ".wl[150].w[0:2]"  0.035105749166969194 0.96247460041132049 
		0.0024196504217102988;
	setAttr -s 3 ".wl[151].w[0:2]"  0.17294925400630373 0.81324065299025761 
		0.0138100930034387;
	setAttr -s 3 ".wl[152].w[0:2]"  0.4186849871637387 0.53824987577726047 
		0.04306513705900078;
	setAttr -s 3 ".wl[153].w[0:2]"  0.60578693018150853 0.30375161493792585 
		0.090461454880565562;
	setAttr -s 3 ".wl[154].w[0:2]"  0.66666661625242374 0.16666670132168662 
		0.16666668242588967;
	setAttr -s 3 ".wl[155].w[0:2]"  0.60578699814137071 0.090461454996474011 
		0.30375154686215522;
	setAttr -s 3 ".wl[156].w[0:2]"  0.41868510147167209 0.043065147604579121 
		0.53824975092374872;
	setAttr -s 3 ".wl[157].w[0:2]"  0.17294933902992438 0.013810095666388513 
		0.81324056530368705;
	setAttr -s 3 ".wl[158].w[0:2]"  0.035105769335913702 0.0024196510645298247 
		0.96247457959955651;
	setAttr -s 3 ".wl[159].w[0:2]"  0.0094850019768205878 0.00062292787362946164 
		0.98989207014955005;
	setAttr -s 3 ".wl[160].w[0:2]"  0.014487548653208357 0.0009629954078838773 
		0.98454945593890775;
	setAttr -s 3 ".wl[161].w[0:2]"  0.1375760181013429 0.010626582507075847 
		0.85179739939158128;
	setAttr -s 3 ".wl[162].w[0:2]"  0.39666483311537826 0.039696160044204946 
		0.56363900684041679;
	setAttr -s 3 ".wl[163].w[0:2]"  0.60073094410735151 0.088157254216203365 
		0.31111180167644509;
	setAttr -s 3 ".wl[164].w[0:2]"  0.66666644508657336 0.16666677745671335 
		0.16666677745671335;
	setAttr -s 3 ".wl[165].w[0:2]"  0.60073096950959293 0.31111178878665036 
		0.088157241703756661;
	setAttr -s 3 ".wl[166].w[0:2]"  0.39666493257369789 0.56363891274053635 
		0.039696154685765796;
	setAttr -s 3 ".wl[167].w[0:2]"  0.13757614824684405 0.85179726606661665 
		0.010626585686539305;
	setAttr -s 3 ".wl[168].w[0:2]"  0.01448755973113337 0.98454944476663053 
		0.00096299550223610938;
	setAttr -s 3 ".wl[169].w[0:2]"  0.00060591487990543046 0.99935574484137768 
		3.8340278716865243e-005;
	setAttr -s 3 ".wl[170].w[0:2]"  0.01448755973113337 0.98454944476663053 
		0.00096299550223610938;
	setAttr -s 3 ".wl[171].w[0:2]"  0.1375761647873118 0.85179725067488288 
		0.010626584537805283;
	setAttr -s 3 ".wl[172].w[0:2]"  0.39666503203208853 0.56363881864058429 
		0.039696149327327207;
	setAttr -s 3 ".wl[173].w[0:2]"  0.60073112681874874 0.311111666529785 
		0.088157206651466272;
	setAttr -s 3 ".wl[174].w[0:2]"  0.66666661951854367 0.16666670005253109 
		0.1666666804289253;
	setAttr -s 3 ".wl[175].w[0:2]"  0.60073117137886589 0.088157218649464908 
		0.31111160997166926;
	setAttr -s 3 ".wl[176].w[0:2]"  0.39666513966193778 0.039696151680161079 
		0.56363870865790122;
	setAttr -s 3 ".wl[177].w[0:2]"  0.13757624585616651 0.010626588071144224 
		0.85179716607268929;
	setAttr -s 3 ".wl[178].w[0:2]"  0.014487571798522702 0.00096299584886301668 
		0.98454943235261438;
	setAttr -s 3 ".wl[179].w[0:2]"  0.00060591573901347818 3.8340315246443467e-005 
		0.99935574394574012;
	setAttr -s 3 ".wl[180].w[0:2]"  0.009484992903055137 0.00062292801672398799 
		0.98989207908022092;
	setAttr -s 3 ".wl[181].w[0:2]"  0.12609538630670558 0.0096328420856734345 
		0.86427177160762092;
	setAttr -s 3 ".wl[182].w[0:2]"  0.38903870002056851 0.038578898703150781 
		0.57238240127628071;
	setAttr -s 3 ".wl[183].w[0:2]"  0.59897974712746704 0.087390064458629707 
		0.31363018841390322;
	setAttr -s 3 ".wl[184].w[0:2]"  0.66666645473910824 0.16666677263044588 
		0.16666677263044588;
	setAttr -s 3 ".wl[185].w[0:2]"  0.59897977260610524 0.31363017554696326 
		0.087390051846931521;
	setAttr -s 3 ".wl[186].w[0:2]"  0.38903879704847433 0.57238230983614558 
		0.03857889311538007;
	setAttr -s 3 ".wl[187].w[0:2]"  0.12609544075284984 0.86427171909704303 
		0.0096328401501071578;
	setAttr -s 3 ".wl[188].w[0:2]"  0.009484997480929144 0.98989207462723938 
		0.000622927891831448;
	setAttr ".wl[189].w[1]"  1;
	setAttr -s 3 ".wl[190].w[0:2]"  0.009484997480929144 0.98989207462723938 
		0.000622927891831448;
	setAttr -s 3 ".wl[191].w[0:2]"  0.12609546982966996 0.86427168939643606 
		0.0096328407738940341;
	setAttr -s 3 ".wl[192].w[0:2]"  0.3890388845249666 0.57238223569190805 
		0.038578879783125429;
	setAttr -s 3 ".wl[193].w[0:2]"  0.5989799196560015 0.3136300670530956 
		0.087390013290902846;
	setAttr -s 3 ".wl[194].w[0:2]"  0.66666659602413136 0.1666667119220423 
		0.16666669205382634;
	setAttr -s 3 ".wl[195].w[0:2]"  0.59897996479130611 0.087390025181667552 
		0.31363001002702645;
	setAttr -s 3 ".wl[196].w[0:2]"  0.38903899110450213 0.038578881939840527 
		0.57238212695565727;
	setAttr -s 3 ".wl[197].w[0:2]"  0.12609554437547682 0.0096328439249313454 
		0.86427161169959177;
	setAttr -s 3 ".wl[198].w[0:2]"  0.0094850041017307731 0.00062292802456069497 
		0.98989206787370854;
	setAttr ".wl[199].w[2]"  1;
	setAttr -s 3 ".wl[200].w[0:2]"  0.014487548653208357 0.0009629954078838773 
		0.98454945593890775;
	setAttr -s 3 ".wl[201].w[0:2]"  0.1375760181013429 0.010626582507075847 
		0.85179739939158128;
	setAttr -s 3 ".wl[202].w[0:2]"  0.39666483311537826 0.039696160044204946 
		0.56363900684041679;
	setAttr -s 3 ".wl[203].w[0:2]"  0.60073094410735151 0.088157254216203365 
		0.31111180167644509;
	setAttr -s 3 ".wl[204].w[0:2]"  0.66666644508657336 0.16666677745671335 
		0.16666677745671335;
	setAttr -s 3 ".wl[205].w[0:2]"  0.60073096950959293 0.31111178878665036 
		0.088157241703756661;
	setAttr -s 3 ".wl[206].w[0:2]"  0.39666493257369789 0.56363891274053635 
		0.039696154685765796;
	setAttr -s 3 ".wl[207].w[0:2]"  0.13757614824684405 0.85179726606661665 
		0.010626585686539305;
	setAttr -s 3 ".wl[208].w[0:2]"  0.01448755973113337 0.98454944476663053 
		0.00096299550223610938;
	setAttr -s 3 ".wl[209].w[0:2]"  0.00060591487990543046 0.99935574484137768 
		3.8340278716865243e-005;
	setAttr -s 3 ".wl[210].w[0:2]"  0.01448755973113337 0.98454944476663053 
		0.00096299550223610938;
	setAttr -s 3 ".wl[211].w[0:2]"  0.1375761647873118 0.85179725067488288 
		0.010626584537805283;
	setAttr -s 3 ".wl[212].w[0:2]"  0.39666503203208853 0.56363881864058429 
		0.039696149327327207;
	setAttr -s 3 ".wl[213].w[0:2]"  0.60073112681874874 0.311111666529785 
		0.088157206651466272;
	setAttr -s 3 ".wl[214].w[0:2]"  0.66666661951854367 0.16666670005253109 
		0.1666666804289253;
	setAttr -s 3 ".wl[215].w[0:2]"  0.60073117137886589 0.088157218649464908 
		0.31111160997166926;
	setAttr -s 3 ".wl[216].w[0:2]"  0.39666513966193778 0.039696151680161079 
		0.56363870865790122;
	setAttr -s 3 ".wl[217].w[0:2]"  0.13757624585616651 0.010626588071144224 
		0.85179716607268929;
	setAttr -s 3 ".wl[218].w[0:2]"  0.014487571798522702 0.00096299584886301668 
		0.98454943235261438;
	setAttr -s 3 ".wl[219].w[0:2]"  0.00060591573901347818 3.8340315246443467e-005 
		0.99935574394574012;
	setAttr -s 3 ".wl[220].w[0:2]"  0.03510569373243768 0.002419648406679699 
		0.9624746578608826;
	setAttr -s 3 ".wl[221].w[0:2]"  0.17294909840942613 0.013810089711726035 
		0.81324081187884789;
	setAttr -s 3 ".wl[222].w[0:2]"  0.41868481855601414 0.043065157512087809 
		0.53825002393189803;
	setAttr -s 3 ".wl[223].w[0:2]"  0.6057867868863539 0.090461491393325724 
		0.30375172172032044;
	setAttr -s 3 ".wl[224].w[0:2]"  0.66666644828986144 0.16666677585506931 
		0.16666677585506931;
	setAttr -s 3 ".wl[225].w[0:2]"  0.6057867868863539 0.30375172172032044 
		0.090461491393325724;
	setAttr -s 3 ".wl[226].w[0:2]"  0.41868491972061844 0.53824993503914675 
		0.043065145240234894;
	setAttr -s 3 ".wl[227].w[0:2]"  0.17294921149452527 0.81324069683350986 
		0.013810091671964944;
	setAttr -s 3 ".wl[228].w[0:2]"  0.035105749166969194 0.96247460041132049 
		0.0024196504217102988;
	setAttr -s 3 ".wl[229].w[0:2]"  0.0094849889812953711 0.98989208373059789 
		0.00062292728810676296;
	setAttr -s 3 ".wl[230].w[0:2]"  0.035105749166969194 0.96247460041132049 
		0.0024196504217102988;
	setAttr -s 3 ".wl[231].w[0:2]"  0.17294925400630373 0.81324065299025761 
		0.0138100930034387;
	setAttr -s 3 ".wl[232].w[0:2]"  0.4186849871637387 0.53824987577726047 
		0.04306513705900078;
	setAttr -s 3 ".wl[233].w[0:2]"  0.60578693018150853 0.30375161493792585 
		0.090461454880565562;
	setAttr -s 3 ".wl[234].w[0:2]"  0.66666661625242374 0.16666670132168662 
		0.16666668242588967;
	setAttr -s 3 ".wl[235].w[0:2]"  0.60578699814137071 0.090461454996474011 
		0.30375154686215522;
	setAttr -s 3 ".wl[236].w[0:2]"  0.41868510147167209 0.043065147604579121 
		0.53824975092374872;
	setAttr -s 3 ".wl[237].w[0:2]"  0.17294933902992438 0.013810095666388513 
		0.81324056530368705;
	setAttr -s 3 ".wl[238].w[0:2]"  0.035105769335913702 0.0024196510645298247 
		0.96247457959955651;
	setAttr -s 3 ".wl[239].w[0:2]"  0.0094850019768205878 0.00062292787362946164 
		0.98989207014955005;
	setAttr -s 3 ".wl[240].w[0:2]"  0.084683690362892319 0.0062032526816978989 
		0.90911305695540989;
	setAttr -s 3 ".wl[241].w[0:2]"  0.2329693768834028 0.019667926208566777 
		0.74736269690803037;
	setAttr -s 3 ".wl[242].w[0:2]"  0.4525362012377836 0.048728512430977713 
		0.49873528633123865;
	setAttr -s 3 ".wl[243].w[0:2]"  0.61358269194757098 0.094311392200367744 
		0.29210591585206119;
	setAttr -s 3 ".wl[244].w[0:2]"  0.66666649150027246 0.16666675424986377 
		0.16666675424986377;
	setAttr -s 3 ".wl[245].w[0:2]"  0.61358271639291984 0.29210590309457551 
		0.094311380512504622;
	setAttr -s 3 ".wl[246].w[0:2]"  0.4525363132983673 0.4987351777592518 
		0.048728508942381003;
	setAttr -s 3 ".wl[247].w[0:2]"  0.23296953578417337 0.74736253338071601 
		0.019667930835110672;
	setAttr -s 3 ".wl[248].w[0:2]"  0.084683803364041396 0.90911293891191824 
		0.006203257724040393;
	setAttr -s 3 ".wl[249].w[0:2]"  0.045219288286407248 0.95161932314525233 
		0.0031613885683405259;
	setAttr -s 3 ".wl[250].w[0:2]"  0.084683803364041396 0.90911293891191824 
		0.006203257724040393;
	setAttr -s 3 ".wl[251].w[0:2]"  0.2329695924828534 0.74736247443763981 
		0.019667933079506813;
	setAttr -s 3 ".wl[252].w[0:2]"  0.45253638855156586 0.49873510977430557 
		0.048728501674128594;
	setAttr -s 3 ".wl[253].w[0:2]"  0.61358282977171053 0.29210581188897278 
		0.094311358339316587;
	setAttr -s 3 ".wl[254].w[0:2]"  0.66666661738616662 0.16666670015827184 
		0.1666666824555616;
	setAttr -s 3 ".wl[255].w[0:2]"  0.61358289425979939 0.094311359541854073 
		0.29210574619834656;
	setAttr -s 3 ".wl[256].w[0:2]"  0.45253649979307453 0.048728505599314027 
		0.4987349946076115;
	setAttr -s 3 ".wl[257].w[0:2]"  0.23296970588028038 0.019667937568301409 
		0.74736235655141814;
	setAttr -s 3 ".wl[258].w[0:2]"  0.084683857951405248 0.0062032600555619478 
		0.90911288199303286;
	setAttr -s 3 ".wl[259].w[0:2]"  0.045219345423957079 0.0031613913841029352 
		0.95161926319194012;
	setAttr -s 3 ".wl[260].w[0:2]"  0.1729489976166651 0.013810075522883412 
		0.81324092686045146;
	setAttr -s 3 ".wl[261].w[0:2]"  0.3138969699689545 0.028667473278092093 
		0.6574355567529534;
	setAttr -s 3 ".wl[262].w[0:2]"  0.49414781118876722 0.056741669945236363 
		0.44911051886599646;
	setAttr -s 3 ".wl[263].w[0:2]"  0.62326850378447818 0.099723029308393815 
		0.27700846690712799;
	setAttr -s 3 ".wl[264].w[0:2]"  0.66666651586354886 0.16666674206822557 
		0.16666674206822557;
	setAttr -s 3 ".wl[265].w[0:2]"  0.62326852698226842 0.27700845463257473 
		0.099723018385156875;
	setAttr -s 3 ".wl[266].w[0:2]"  0.49414789181573615 0.44911044414999418 
		0.056741664034269772;
	setAttr -s 3 ".wl[267].w[0:2]"  0.3138971725061393 0.65743534599057485 
		0.028667481503285887;
	setAttr -s 3 ".wl[268].w[0:2]"  0.17294920930837146 0.81324070398042758 
		0.013810086711200945;
	setAttr -s 3 ".wl[269].w[0:2]"  0.12609542065333773 0.86427174428315134 
		0.0096328350635109267;
	setAttr -s 3 ".wl[270].w[0:2]"  0.17294920930837146 0.81324070398042758 
		0.013810086711200945;
	setAttr -s 3 ".wl[271].w[0:2]"  0.31389720409535821 0.65743531373238584 
		0.028667482172255954;
	setAttr -s 3 ".wl[272].w[0:2]"  0.49414800373905921 0.44911033042061954 
		0.056741665840321268;
	setAttr -s 3 ".wl[273].w[0:2]"  0.62326863279919231 0.27700836786432309 
		0.099722999336484486;
	setAttr -s 3 ".wl[274].w[0:2]"  0.6666666301655636 0.1666666929540804 
		0.16666667688035597;
	setAttr -s 3 ".wl[275].w[0:2]"  0.62326868316464712 0.099722998704025539 
		0.27700831813132731;
	setAttr -s 3 ".wl[276].w[0:2]"  0.49414807534889171 0.056741670601855997 
		0.44911025404925231;
	setAttr -s 3 ".wl[277].w[0:2]"  0.31389734995524821 0.028667491165203649 
		0.65743515887954806;
	setAttr -s 3 ".wl[278].w[0:2]"  0.17294931676992509 0.013810092532793397 
		0.8132405906972815;
	setAttr -s 3 ".wl[279].w[0:2]"  0.12609551159124938 0.0096328401180084608 
		0.86427164829074221;
	setAttr -s 3 ".wl[280].w[0:2]"  0.29237855688186798 0.026130888875209271 
		0.68149055424292271;
	setAttr -s 3 ".wl[281].w[0:2]"  0.40546567440089348 0.041016181178001668 
		0.55351814442110492;
	setAttr -s 3 ".wl[282].w[0:2]"  0.53855137149376064 0.067184589099727021 
		0.39426403940651228;
	setAttr -s 3 ".wl[283].w[0:2]"  0.63382447843878897 0.1067216204260419 
		0.2594539011351692;
	setAttr -s 3 ".wl[284].w[0:2]"  0.66666658685732183 0.16666670657133906 
		0.16666670657133906;
	setAttr -s 3 ".wl[285].w[0:2]"  0.63382449962887877 0.25945388983035528 
		0.10672161054076602;
	setAttr -s 3 ".wl[286].w[0:2]"  0.53855145198841614 0.39426396287298376 
		0.06718458513860022;
	setAttr -s 3 ".wl[287].w[0:2]"  0.40546589976076053 0.55351790462644179 
		0.041016195612797658;
	setAttr -s 3 ".wl[288].w[0:2]"  0.2923787722926437 0.68149032546945232 
		0.02613090223790392;
	setAttr -s 3 ".wl[289].w[0:2]"  0.24999987646508803 0.72855352384112015 
		0.021446599693791823;
	setAttr -s 3 ".wl[290].w[0:2]"  0.2923787722926437 0.68149032546945232 
		0.02613090223790392;
	setAttr -s 3 ".wl[291].w[0:2]"  0.40546593644702739 0.55351786654666579 
		0.041016197006306841;
	setAttr -s 3 ".wl[292].w[0:2]"  0.53855152756762803 0.39426388791688727 
		0.067184584515484758;
	setAttr -s 3 ".wl[293].w[0:2]"  0.63382458683036003 0.25945382114334725 
		0.10672159202629279;
	setAttr -s 3 ".wl[294].w[0:2]"  0.66666666178505318 0.16666667613194791 
		0.16666666208299893;
	setAttr -s 3 ".wl[295].w[0:2]"  0.63382461046156391 0.10672160316764624 
		0.25945378637078986;
	setAttr -s 3 ".wl[296].w[0:2]"  0.53855159331592384 0.067184590568390878 
		0.39426381611568539;
	setAttr -s 3 ".wl[297].w[0:2]"  0.40546605000072489 0.041016205235997569 
		0.55351774476327753;
	setAttr -s 3 ".wl[298].w[0:2]"  0.29237899289199742 0.026130917018665677 
		0.68149009008933692;
	setAttr -s 3 ".wl[299].w[0:2]"  0.25000001695456581 0.021446608921902425 
		0.72855337412353183;
	setAttr -s 3 ".wl[300].w[0:2]"  0.41868479236384787 0.043065112041141579 
		0.53825009559501058;
	setAttr -s 3 ".wl[301].w[0:2]"  0.49414783174610122 0.056741645614040707 
		0.44911052263985807;
	setAttr -s 3 ".wl[302].w[0:2]"  0.58082544483859078 0.080209135199025006 
		0.33896541996238422;
	setAttr -s 3 ".wl[303].w[0:2]"  0.64418884454342973 0.11534165432095116 
		0.24046950113561918;
	setAttr -s 3 ".wl[304].w[0:2]"  0.66666658607644491 0.1666667069617776 
		0.1666667069617776;
	setAttr -s 3 ".wl[305].w[0:2]"  0.64418884454342973 0.24046950113561918 
		0.11534165432095116;
	setAttr -s 3 ".wl[306].w[0:2]"  0.58082548160375458 0.33896538376948421 
		0.080209134626761325;
	setAttr -s 3 ".wl[307].w[0:2]"  0.49414797212754391 0.44911036937610133 
		0.056741658496354805;
	setAttr -s 3 ".wl[308].w[0:2]"  0.41868498210140576 0.53824988962811005 
		0.043065128270484102;
	setAttr -s 3 ".wl[309].w[0:2]"  0.38903883626313984 0.57238229499861781 
		0.038578868738242372;
	setAttr -s 3 ".wl[310].w[0:2]"  0.41868498210140576 0.53824988962811005 
		0.043065128270484102;
	setAttr -s 3 ".wl[311].w[0:2]"  0.49414800801621317 0.44911033120579147 
		0.056741660777995431;
	setAttr -s 3 ".wl[312].w[0:2]"  0.58082554940850484 0.33896531409035285 
		0.080209136501142309;
	setAttr -s 3 ".wl[313].w[0:2]"  0.64418890338156842 0.24046945548556334 
		0.11534164113286824;
	setAttr -s 3 ".wl[314].w[0:2]"  0.66666663797975012 0.16666668684924682 
		0.16666667517100303;
	setAttr -s 3 ".wl[315].w[0:2]"  0.64418893207950001 0.11534164911418372 
		0.24046941880631628;
	setAttr -s 3 ".wl[316].w[0:2]"  0.58082560576209319 0.080209144413338818 
		0.33896524982456799;
	setAttr -s 3 ".wl[317].w[0:2]"  0.49414811250898999 0.056741671378671185 
		0.44911021611233876;
	setAttr -s 3 ".wl[318].w[0:2]"  0.41868513399489726 0.043065141433509833 
		0.53824972457159292;
	setAttr -s 3 ".wl[319].w[0:2]"  0.38903899110450213 0.038578881939840527 
		0.57238212695565727;
	setAttr -s 3 ".wl[320].w[0:2]"  0.52736370575541702 0.064313678735761354 
		0.40832261550882176;
	setAttr -s 3 ".wl[321].w[0:2]"  0.56875772699685678 0.076058643477106502 
		0.35518362952603671;
	setAttr -s 3 ".wl[322].w[0:2]"  0.61694886489874157 0.096103582169577748 
		0.28694755293168067;
	setAttr -s 3 ".wl[323].w[0:2]"  0.65337347067050766 0.12562334583293033 
		0.22100318349656198;
	setAttr -s 3 ".wl[324].w[0:2]"  0.6666666087688391 0.16666669561558045 
		0.16666669561558045;
	setAttr -s 3 ".wl[325].w[0:2]"  0.65337347797979228 0.22100317962291779 
		0.12562334239728987;
	setAttr -s 3 ".wl[326].w[0:2]"  0.61694890473348074 0.28694750834179072 
		0.096103586924728618;
	setAttr -s 3 ".wl[327].w[0:2]"  0.5687578406602567 0.35518349833765062 
		0.076058661002092687;
	setAttr -s 3 ".wl[328].w[0:2]"  0.52736386470847829 0.40832243485021674 
		0.064313700441305036;
	setAttr -s 3 ".wl[329].w[0:2]"  0.51103180847110341 0.42853649081220058 
		0.060431700716695964;
	setAttr -s 3 ".wl[330].w[0:2]"  0.52736386470847829 0.40832243485021674 
		0.064313700441305036;
	setAttr -s 3 ".wl[331].w[0:2]"  0.56875784214079117 0.35518349768226998 
		0.076058660176938908;
	setAttr -s 3 ".wl[332].w[0:2]"  0.61694893487785263 0.28694747673247811 
		0.096103588389669301;
	setAttr -s 3 ".wl[333].w[0:2]"  0.65337350991040111 0.22100314889359396 
		0.12562334119600493;
	setAttr -s 3 ".wl[334].w[0:2]"  0.6666666408398858 0.16666668409004795 
		0.16666667507006627;
	setAttr -s 3 ".wl[335].w[0:2]"  0.65337352722243902 0.1256233468660013 
		0.22100312591155968;
	setAttr -s 3 ".wl[336].w[0:2]"  0.61694896933076271 0.0961035957025628 
		0.28694743496667457;
	setAttr -s 3 ".wl[337].w[0:2]"  0.56875792590778995 0.076058674145835212 
		0.35518339994637482;
	setAttr -s 3 ".wl[338].w[0:2]"  0.52736392855687797 0.064313708922785262 
		0.40832236252033677;
	setAttr -s 3 ".wl[339].w[0:2]"  0.51103190741433291 0.060431713742968726 
		0.42853637884269841;
	setAttr -s 3 ".wl[340].w[0:2]"  0.605786902977553 0.090461418369505886 
		0.303751678652941;
	setAttr -s 3 ".wl[341].w[0:2]"  0.62326859356814746 0.099722971642719885 
		0.27700843478913262;
	setAttr -s 3 ".wl[342].w[0:2]"  0.64418887536289915 0.11534163283491491 
		0.24046949180218585;
	setAttr -s 3 ".wl[343].w[0:2]"  0.66055058133897682 0.13760306395682023 
		0.20184635470420295;
	setAttr -s 3 ".wl[344].w[0:2]"  0.66666662801519883 0.16666668599240059 
		0.16666668599240059;
	setAttr -s 3 ".wl[345].w[0:2]"  0.66055058388565813 0.20184635337404577 
		0.1376030627402961;
	setAttr -s 3 ".wl[346].w[0:2]"  0.64418888802126295 0.24046947792489298 
		0.11534163405384398;
	setAttr -s 3 ".wl[347].w[0:2]"  0.62326864158571782 0.27700837090958214 
		0.099722987504700156;
	setAttr -s 3 ".wl[348].w[0:2]"  0.60578695753184841 0.30375160917519139 
		0.090461433292960219;
	setAttr -s 3 ".wl[349].w[0:2]"  0.59897993385083226 0.31363006844265479 
		0.087389997706512942;
	setAttr -s 3 ".wl[350].w[0:2]"  0.60578695753184841 0.30375160917519139 
		0.090461433292960219;
	setAttr -s 3 ".wl[351].w[0:2]"  0.62326865201066872 0.27700835769902876 
		0.099722990290302529;
	setAttr -s 3 ".wl[352].w[0:2]"  0.64418890719128163 0.24046945345174045 
		0.11534163935697798;
	setAttr -s 3 ".wl[353].w[0:2]"  0.66055059915420344 0.20184633527759305 
		0.1376030655682034;
	setAttr -s 3 ".wl[354].w[0:2]"  0.66666664165879208 0.16666668224041212 
		0.16666667610079586;
	setAttr -s 3 ".wl[355].w[0:2]"  0.66055060678270483 0.13760307204568314 
		0.20184632117161203;
	setAttr -s 3 ".wl[356].w[0:2]"  0.64418892226349456 0.1153416465702955 
		0.24046943116620986;
	setAttr -s 3 ".wl[357].w[0:2]"  0.6232686805473886 0.09972299993642407 
		0.27700831951618732;
	setAttr -s 3 ".wl[358].w[0:2]"  0.60578700104271732 0.090461445296175724 
		0.30375155366110701;
	setAttr -s 3 ".wl[359].w[0:2]"  0.59897997898614574 0.087390009597275803 
		0.31363001141657842;
	setAttr -s 3 ".wl[360].w[0:2]"  0.65169233738959254 0.12345547917149358 
		0.22485218343891383;
	setAttr -s 3 ".wl[361].w[0:2]"  0.65587465071910311 0.12919735380185121 
		0.21492799547904573;
	setAttr -s 3 ".wl[362].w[0:2]"  0.66099834634437948 0.13859098652640287 
		0.20041066712921762;
	setAttr -s 3 ".wl[363].w[0:2]"  0.66510631715765378 0.15129551124995863 
		0.18359817159238759;
	setAttr -s 3 ".wl[364].w[0:2]"  0.66666664197265613 0.16666667901367194 
		0.16666667901367194;
	setAttr -s 3 ".wl[365].w[0:2]"  0.66510631781144369 0.18359817125772152 
		0.15129551093083485;
	setAttr -s 3 ".wl[366].w[0:2]"  0.66099835125291961 0.20041065783064374 
		0.13859099091643678;
	setAttr -s 3 ".wl[367].w[0:2]"  0.65587466315740406 0.21492797179226397 
		0.12919736505033194;
	setAttr -s 3 ".wl[368].w[0:2]"  0.65169235107054135 0.22485215881921566 
		0.12345549011024293;
	setAttr -s 3 ".wl[369].w[0:2]"  0.65008608646357779 0.22838801599892825 
		0.12152589753749407;
	setAttr -s 3 ".wl[370].w[0:2]"  0.65169235107054135 0.22485215881921566 
		0.12345549011024293;
	setAttr -s 3 ".wl[371].w[0:2]"  0.65587466540961847 0.2149279671792062 
		0.1291973674111753;
	setAttr -s 3 ".wl[372].w[0:2]"  0.66099835398174511 0.20041065303815012 
		0.13859099298010491;
	setAttr -s 3 ".wl[373].w[0:2]"  0.66510632236247558 0.18359816393764183 
		0.15129551369988264;
	setAttr -s 3 ".wl[374].w[0:2]"  0.66666664611675541 0.16666667849565919 
		0.16666667538758539;
	setAttr -s 3 ".wl[375].w[0:2]"  0.66510632429834871 0.15129551774542516 
		0.18359815795622617;
	setAttr -s 3 ".wl[376].w[0:2]"  0.66099835779205962 0.13859099789553539 
		0.20041064431240502;
	setAttr -s 3 ".wl[377].w[0:2]"  0.65587467030645552 0.12919737194761716 
		0.21492795774592727;
	setAttr -s 3 ".wl[378].w[0:2]"  0.65169236189324486 0.12345549891847937 
		0.22485213918827579;
	setAttr -s 3 ".wl[379].w[0:2]"  0.65008609764057468 0.12152590626322005 
		0.22838799609620533;
	setAttr -s 3 ".wl[380].w[0:2]"  0.66666666666666652 0.16666666666666671 
		0.16666666666666671;
	setAttr -s 3 ".wl[381].w[0:2]"  0.66666666666666652 0.16666666666666671 
		0.16666666666666671;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 0 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 6;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode ngSkinLayerData -n "ngSkinToolsData_skinCluster1";
	setAttr ".ld" -type "ngSkinLayerDataStorage" 4 9236 {
"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",
"V1VVVVVVxT8AAAAAAAAAAAAAAAA="};
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off ".ehql";
	setAttr -k off ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off ".tcov";
	setAttr -k off ".lith";
	setAttr -k off ".sobc";
	setAttr -k off ".cuth";
	setAttr -k off ".hgcd";
	setAttr -k off ".hgci";
	setAttr -k off ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "skinCluster1GroupId.id" "pSphereShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pSphereShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pSphereShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pSphereShape1.twl";
connectAttr "polySphere1.out" "pSphereShape1Orig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "UpperLip.wm" "skinCluster1.ma[0]";
connectAttr "RightUpperLip.wm" "skinCluster1.ma[1]";
connectAttr "LeftUpperLip.wm" "skinCluster1.ma[2]";
connectAttr "UpperLip.liw" "skinCluster1.lw[0]";
connectAttr "RightUpperLip.liw" "skinCluster1.lw[1]";
connectAttr "LeftUpperLip.liw" "skinCluster1.lw[2]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pSphereShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pSphereShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "UpperLip.msg" "bindPose1.m[0]";
connectAttr "RightUpperLip.msg" "bindPose1.m[1]";
connectAttr "LeftUpperLip.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.w" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "UpperLip.bps" "bindPose1.wm[0]";
connectAttr "RightUpperLip.bps" "bindPose1.wm[1]";
connectAttr "LeftUpperLip.bps" "bindPose1.wm[2]";
connectAttr "skinCluster1.msg" "ngSkinToolsData_skinCluster1.sc";
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of mirror_association_issues.ma
