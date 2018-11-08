#--------------------------------------------------------------------
# path to gplay output directory (generated by cmake)
#--------------------------------------------------------------------
PRE_TARGETDEPS += $$PWD/../setup.pri
include($$PWD/../setup.pri)

#--------------------------------------------------------------------
# project
#--------------------------------------------------------------------
QT -= core gui
TARGET = gplay
TEMPLATE = lib
CONFIG += staticlib
CONFIG += c++11
CONFIG -= qt

DESTDIR = $$GPLAY_OUTPUT_DIR/lib
QMAKE_CLEAN += $$DESTDIR/$$TARGET

CONFIG(debug, debug|release):
    DEFINES += _DEBUG
DEFINES += GP_USE_GAMEPAD \
    #GP_CUSTOM_PLATFORM \
    #COMPIL_WITH_LUA \
    #GP_NO_SPARK

INCLUDEPATH += $$GPLAY_OUTPUT_DIR/include/gplayengine/thirdparty

#--------------------------------------------------------------------
# platform specific
#--------------------------------------------------------------------
linux : {
    PRE_TARGETDEPS += $$GPLAY_OUTPUT_DIR/lib/libgplay-deps.a
    DEFINES += __linux__
    SOURCES += core/gplay3d-main-linux.cpp
    QMAKE_CXXFLAGS += -Wall
    QMAKE_CXXFLAGS += -Wno-sign-compare
    QMAKE_CXXFLAGS += -Wno-extra
    QMAKE_CXXFLAGS += -Wno-parentheses
    QMAKE_CXXFLAGS += -Wno-ignored-qualifiers
    QMAKE_CXXFLAGS += -Wno-unused-function
    QMAKE_CXXFLAGS += -Wno-unused-parameter
    QMAKE_CXXFLAGS += -Wno-unused-variable
    QMAKE_CXXFLAGS += -Wno-unused-value
    QMAKE_CXXFLAGS += -Wno-unused-but-set-variable
    QMAKE_CXXFLAGS += -Wno-unused-local-typedefs
    QMAKE_CXXFLAGS += -Wno-reorder
    QMAKE_CXXFLAGS += -Wno-switch
    QMAKE_CXXFLAGS += -Wno-type-limits
    QMAKE_CXXFLAGS += -Wno-maybe-uninitialized
}

#--------------------------------------------------------------------
# files
#--------------------------------------------------------------------
HEADERS += \
    ai/AIAgent.h \
    ai/AIController.h \
    ai/AIMessage.h \
    ai/AIState.h \
    ai/AIStateMachine.h \
    animation/Animation.h \
    animation/AnimationClip.h \
    animation/AnimationController.h \
    animation/AnimationTarget.h \
    animation/AnimationValue.h \
    audio/AudioBuffer.h \
    audio/AudioController.h \
    audio/AudioListener.h \
    audio/AudioSource.h \
    core/Base.h \
    core/Bundle.h \
    core/DebugNew.h \
    core/FileSystem.h \
    core/FileWatcher.h \
    core/Game.h \
    core/Logger.h \
    core/Platform.h \
    core/Properties.h \
    core/Ref.h \
    core/Singleton.h \
    core/Stream.h \
    core/StringHash.h \
    core/TimeListener.h \
    core/Variant.h \
    events/BaseEventData.h \
    events/EventManager.h \
    events/EventManagerBase.h \
    events/FastDelegate.h \
    events/FastDelegateBind.h \
    graphics/Camera.h \
    graphics/Drawable.h \
    graphics/Effect.h \
    graphics/Font.h \
    graphics/FrameBuffer.h \
    graphics/HeightField.h \
    graphics/Image.h \
    graphics/Joint.h \
    graphics/Light.h \
    graphics/Material.h \
    graphics/MaterialParameter.h \
    graphics/Mesh.h \
    graphics/MeshBatch.h \
    graphics/MeshPart.h \
    graphics/MeshSkin.h \
    graphics/Model.h \
    graphics/Node.h \
    graphics/ParticleEmitter.h \
    graphics/Pass.h \
    graphics/RenderState.h \
    graphics/Scene.h \
    graphics/SceneLoader.h \
    graphics/ScreenDisplayer.h \
    graphics/Sprite.h \
    graphics/SpriteBatch.h \
    graphics/Technique.h \
    graphics/Terrain.h \
    graphics/TerrainPatch.h \
    graphics/Text.h \
    graphics/Texture.h \
    graphics/TileSet.h \
    graphics/VertexFormat.h \
    input/Gamepad.h \
    input/Gesture.h \
    input/JoystickControl.h \
    input/Keyboard.h \
    input/Mouse.h \
    input/Touch.h \
    math/BoundingBox.h \
    math/BoundingSphere.h \
    math/Curve.h \
    math/Frustum.h \
    math/MathUtil.h \
    math/Matrix.h \
    math/Plane.h \
    math/Quaternion.h \
    math/Ray.h \
    math/Rectangle.h \
    math/Transform.h \
    math/Vector2.h \
    math/Vector3.h \
    math/Vector4.h \
    physics/PhysicsCharacter.h \
    physics/PhysicsCollisionObject.h \
    physics/PhysicsCollisionShape.h \
    physics/PhysicsConstraint.h \
    physics/PhysicsController.h \
    physics/PhysicsFixedConstraint.h \
    physics/PhysicsGenericConstraint.h \
    physics/PhysicsGhostObject.h \
    physics/PhysicsHingeConstraint.h \
    physics/PhysicsRigidBody.h \
    physics/PhysicsSocketConstraint.h \
    physics/PhysicsSpringConstraint.h \
    physics/PhysicsVehicle.h \
    physics/PhysicsVehicleWheel.h \
    renderer/BGFXGpuProgram.h \
    renderer/BGFXImGui.h \
    renderer/BGFXIndexBuffer.h \
    renderer/BGFXRenderer.h \
    renderer/BGFXTexture.h \
    renderer/BGFXUniform.h \
    renderer/BGFXVertexBuffer.h \
    renderer/GeometryBuffer.h \
    renderer/MemoryBuffer.h \
    renderer/Renderer.h \
    script/Script.h \
    script/ScriptController.h \
    script/ScriptTarget.h \
    sparkparticles/SparkBaseRenderer.h \
    sparkparticles/SparkGP3D.h \
    sparkparticles/SparkParticleEmitter.h \
    sparkparticles/SparkQuadRenderer.h \
    sparkparticles/SparkUtility.h \
    ui/AbsoluteLayout.h \
    ui/Button.h \
    ui/CheckBox.h \
    ui/Container.h \
    ui/Control.h \
    ui/ControlFactory.h \
    ui/FlowLayout.h \
    ui/Form.h \
    ui/ImageControl.h \
    ui/Label.h \
    ui/Layout.h \
    ui/RadioButton.h \
    ui/Slider.h \
    ui/TextBox.h \
    ui/Theme.h \
    ui/ThemeStyle.h \
    ui/VerticalLayout.h \
    graphics/View.h \
    graphics/DebugDraw.h \
    editor/InGameEditor.h \
    core/Serializable.h \
    core/Serializer.h \
    core/SerializerJson.h \
    core/Activator.h \
    core/SerializerBinary.h

SOURCES += \
    ai/AIAgent.cpp \
    ai/AIController.cpp \
    ai/AIMessage.cpp \
    ai/AIState.cpp \
    ai/AIStateMachine.cpp \
    animation/Animation.cpp \
    animation/AnimationClip.cpp \
    animation/AnimationController.cpp \
    animation/AnimationTarget.cpp \
    animation/AnimationValue.cpp \
    audio/AudioBuffer.cpp \
    audio/AudioController.cpp \
    audio/AudioListener.cpp \
    audio/AudioSource.cpp \
    core/Bundle.cpp \
    core/DebugNew.cpp \
    core/FileSystem.cpp \
    core/FileWatcher.cpp \
    core/Game.cpp \
    core/Logger.cpp \
    core/Platform.cpp \
    core/PlatformSDL2.cpp \
    core/Properties.cpp \
    core/Ref.cpp \
    events/EventManager.cpp \
    events/EventManagerBase.cpp \
    graphics/Camera.cpp \
    graphics/Drawable.cpp \
    graphics/Effect.cpp \
    graphics/Font.cpp \
    graphics/FrameBuffer.cpp \
    graphics/HeightField.cpp \
    graphics/Image.cpp \
    graphics/Joint.cpp \
    graphics/Light.cpp \
    graphics/Material.cpp \
    graphics/MaterialParameter.cpp \
    graphics/Mesh.cpp \
    graphics/MeshBatch.cpp \
    graphics/MeshPart.cpp \
    graphics/MeshSkin.cpp \
    graphics/Model.cpp \
    graphics/Node.cpp \
    graphics/ParticleEmitter.cpp \
    graphics/Pass.cpp \
    graphics/RenderState.cpp \
    graphics/Scene.cpp \
    graphics/SceneLoader.cpp \
    graphics/ScreenDisplayer.cpp \
    graphics/Sprite.cpp \
    graphics/SpriteBatch.cpp \
    graphics/Technique.cpp \
    graphics/Terrain.cpp \
    graphics/TerrainPatch.cpp \
    graphics/Text.cpp \
    graphics/Texture.cpp \
    graphics/TileSet.cpp \
    graphics/VertexFormat.cpp \
    input/Gamepad.cpp \
    input/JoystickControl.cpp \
    math/BoundingBox.cpp \
    math/BoundingSphere.cpp \
    math/Curve.cpp \
    math/Frustum.cpp \
    math/MathUtil.cpp \
    math/Matrix.cpp \
    math/Plane.cpp \
    math/Quaternion.cpp \
    math/Ray.cpp \
    math/Rectangle.cpp \
    math/Transform.cpp \
    math/Vector2.cpp \
    math/Vector3.cpp \
    math/Vector4.cpp \
    physics/PhysicsCharacter.cpp \
    physics/PhysicsCollisionObject.cpp \
    physics/PhysicsCollisionShape.cpp \
    physics/PhysicsConstraint.cpp \
    physics/PhysicsController.cpp \
    physics/PhysicsFixedConstraint.cpp \
    physics/PhysicsGenericConstraint.cpp \
    physics/PhysicsGhostObject.cpp \
    physics/PhysicsHingeConstraint.cpp \
    physics/PhysicsRigidBody.cpp \
    physics/PhysicsSocketConstraint.cpp \
    physics/PhysicsSpringConstraint.cpp \
    physics/PhysicsVehicle.cpp \
    physics/PhysicsVehicleWheel.cpp \
    renderer/BGFXGpuProgram.cpp \
    renderer/BGFXImGui.cpp \
    renderer/BGFXIndexBuffer.cpp \
    renderer/BGFXRenderer.cpp \
    renderer/BGFXTexture.cpp \
    renderer/BGFXUniform.cpp \
    renderer/BGFXVertexBuffer.cpp \
    renderer/GeometryBuffer.cpp \
    renderer/MemoryBuffer.cpp \
    script/Script.cpp \
    script/ScriptController.cpp \
    script/ScriptTarget.cpp \
    sparkparticles/SparkBaseRenderer.cpp \
    sparkparticles/SparkParticleEmitter.cpp \
    sparkparticles/SparkQuadRenderer.cpp \
    sparkparticles/SparkUtility.cpp \
    ui/AbsoluteLayout.cpp \
    ui/Button.cpp \
    ui/CheckBox.cpp \
    ui/Container.cpp \
    ui/Control.cpp \
    ui/ControlFactory.cpp \
    ui/FlowLayout.cpp \
    ui/Form.cpp \
    ui/ImageControl.cpp \
    ui/Label.cpp \
    ui/Layout.cpp \
    ui/RadioButton.cpp \
    ui/Slider.cpp \
    ui/TextBox.cpp \
    ui/Theme.cpp \
    ui/ThemeStyle.cpp \
    ui/VerticalLayout.cpp \
    graphics/View.cpp \
    graphics/DebugDraw.cpp \
    editor/InGameEditor.cpp \
    core/Serializer.cpp \
    core/SerializerJson.cpp \
    core/Activator.cpp \
    core/SerializerBinary.cpp


#--------------------------------------------------------------------
# lua
#--------------------------------------------------------------------
contains(DEFINES, COMPIL_WITH_LUA) {
HEADERS += \
    lua/lua_AbsoluteLayout.h \
    lua/lua_AIAgent.h \
    lua/lua_AIAgentListener.h \
    lua/lua_AIController.h \
    lua/lua_AIMessage.h \
    lua/lua_AIState.h \
    lua/lua_AIStateListener.h \
    lua/lua_AIStateMachine.h \
    lua/lua_all_bindings.h \
    lua/lua_Animation.h \
    lua/lua_AnimationClip.h \
    lua/lua_AnimationClipListener.h \
    lua/lua_AnimationController.h \
    lua/lua_AnimationTarget.h \
    lua/lua_AnimationValue.h \
    lua/lua_AudioBuffer.h \
    lua/lua_AudioController.h \
    lua/lua_AudioListener.h \
    lua/lua_AudioSource.h \
    lua/lua_BoundingBox.h \
    lua/lua_BoundingSphere.h \
    lua/lua_Bundle.h \
    lua/lua_Button.h \
    lua/lua_Camera.h \
    lua/lua_CameraListener.h \
    lua/lua_CheckBox.h \
    lua/lua_Container.h \
    lua/lua_Control.h \
    lua/lua_ControlListener.h \
    lua/lua_Curve.h \
    lua/lua_Drawable.h \
    lua/lua_Effect.h \
    lua/lua_FileSystem.h \
    lua/lua_FlowLayout.h \
    lua/lua_Font.h \
    lua/lua_Form.h \
    lua/lua_FrameBuffer.h \
    lua/lua_Frustum.h \
    lua/lua_Game.h \
    lua/lua_Gamepad.h \
    lua/lua_Gesture.h \
    lua/lua_Global.h \
    lua/lua_HeightField.h \
    lua/lua_Image.h \
    lua/lua_ImageControl.h \
    lua/lua_ImageFormat.h \
    lua/lua_Joint.h \
    lua/lua_JoystickControl.h \
    lua/lua_Keyboard.h \
    lua/lua_Label.h \
    lua/lua_Layout.h \
    lua/lua_Light.h \
    lua/lua_Logger.h \
    lua/lua_Material.h \
    lua/lua_MaterialParameter.h \
    lua/lua_MathUtil.h \
    lua/lua_Matrix.h \
    lua/lua_Mesh.h \
    lua/lua_MeshBatch.h \
    lua/lua_MeshPart.h \
    lua/lua_MeshSkin.h \
    lua/lua_Model.h \
    lua/lua_Mouse.h \
    lua/lua_Node.h \
    lua/lua_NodeCloneContext.h \
    lua/lua_ParticleEmitter.h \
    lua/lua_Pass.h \
    lua/lua_PhysicsCharacter.h \
    lua/lua_PhysicsCollisionObject.h \
    lua/lua_PhysicsCollisionObjectCollisionListener.h \
    lua/lua_PhysicsCollisionObjectCollisionPair.h \
    lua/lua_PhysicsCollisionObjectType.h \
    lua/lua_PhysicsCollisionShape.h \
    lua/lua_PhysicsCollisionShapeDefinition.h \
    lua/lua_PhysicsConstraint.h \
    lua/lua_PhysicsController.h \
    lua/lua_PhysicsControllerHitFilter.h \
    lua/lua_PhysicsControllerHitResult.h \
    lua/lua_PhysicsControllerListener.h \
    lua/lua_PhysicsFixedConstraint.h \
    lua/lua_PhysicsGenericConstraint.h \
    lua/lua_PhysicsGhostObject.h \
    lua/lua_PhysicsHingeConstraint.h \
    lua/lua_PhysicsRigidBody.h \
    lua/lua_PhysicsRigidBodyParameters.h \
    lua/lua_PhysicsSocketConstraint.h \
    lua/lua_PhysicsSpringConstraint.h \
    lua/lua_PhysicsVehicle.h \
    lua/lua_PhysicsVehicleWheel.h \
    lua/lua_Plane.h \
    lua/lua_Platform.h \
    lua/lua_Properties.h \
    lua/lua_Quaternion.h \
    lua/lua_RadioButton.h \
    lua/lua_Ray.h \
    lua/lua_Rectangle.h \
    lua/lua_Ref.h \
    lua/lua_RenderState.h \
    lua/lua_RenderTarget.h \
    lua/lua_Scene.h \
    lua/lua_ScreenDisplayer.h \
    lua/lua_Script.h \
    lua/lua_ScriptController.h \
    lua/lua_ScriptTarget.h \
    lua/lua_ScriptTargetEvent.h \
    lua/lua_ScriptTargetEventRegistry.h \
    lua/lua_Slider.h \
    lua/lua_Sprite.h \
    lua/lua_SpriteBatch.h \
    lua/lua_SpriteBatchSpriteVertex.h \
    lua/lua_Technique.h \
    lua/lua_Terrain.h \
    lua/lua_TerrainPatch.h \
    lua/lua_Text.h \
    lua/lua_TextBox.h \
    lua/lua_Texture.h \
    lua/lua_TextureSampler.h \
    lua/lua_Theme.h \
    lua/lua_ThemeSideRegions.h \
    lua/lua_ThemeStyle.h \
    lua/lua_ThemeThemeImage.h \
    lua/lua_ThemeUVs.h \
    lua/lua_TileSet.h \
    lua/lua_Touch.h \
    lua/lua_TouchTouchEvent.h \
    lua/lua_Transform.h \
    lua/lua_TransformListener.h \
    lua/lua_Vector2.h \
    lua/lua_Vector3.h \
    lua/lua_Vector4.h \
    lua/lua_VertexFormat.h \
    lua/lua_VertexFormatElement.h \
    lua/lua_VerticalLayout.h

SOURCES += \
    lua/lua_all_bindings.cpp \
    lua/lua_AbsoluteLayout.cpp \
    lua/lua_AIAgent.cpp \
    lua/lua_AIAgentListener.cpp \
    lua/lua_AIController.cpp \
    lua/lua_AIMessage.cpp \
    lua/lua_AIState.cpp \
    lua/lua_AIStateListener.cpp \
    lua/lua_AIStateMachine.cpp \
    lua/lua_Animation.cpp \
    lua/lua_AnimationClip.cpp \
    lua/lua_AnimationClipListener.cpp \
    lua/lua_AnimationController.cpp \
    lua/lua_AnimationTarget.cpp \
    lua/lua_AnimationValue.cpp \
    lua/lua_AudioBuffer.cpp \
    lua/lua_AudioController.cpp \
    lua/lua_AudioListener.cpp \
    lua/lua_AudioSource.cpp \
    lua/lua_BoundingBox.cpp \
    lua/lua_BoundingSphere.cpp \
    lua/lua_Bundle.cpp \
    lua/lua_Button.cpp \
    lua/lua_Camera.cpp \
    lua/lua_CameraListener.cpp \
    lua/lua_CheckBox.cpp \
    lua/lua_Container.cpp \
    lua/lua_Control.cpp \
    lua/lua_ControlListener.cpp \
    lua/lua_Curve.cpp \
    lua/lua_Drawable.cpp \
    lua/lua_Effect.cpp \
    lua/lua_FileSystem.cpp \
    lua/lua_FlowLayout.cpp \
    lua/lua_Font.cpp \
    lua/lua_Form.cpp \
    lua/lua_FrameBuffer.cpp \
    lua/lua_Frustum.cpp \
    lua/lua_Game.cpp \
    lua/lua_Gamepad.cpp \
    lua/lua_Gesture.cpp \
    lua/lua_Global.cpp \
    lua/lua_HeightField.cpp \
    lua/lua_Image.cpp \
    lua/lua_ImageControl.cpp \
    lua/lua_Joint.cpp \
    lua/lua_JoystickControl.cpp \
    lua/lua_Keyboard.cpp \
    lua/lua_Label.cpp \
    lua/lua_Layout.cpp \
    lua/lua_Light.cpp \
    lua/lua_Logger.cpp \
    lua/lua_Material.cpp \
    lua/lua_MaterialParameter.cpp \
    lua/lua_MathUtil.cpp \
    lua/lua_Matrix.cpp \
    lua/lua_Mesh.cpp \
    lua/lua_MeshBatch.cpp \
    lua/lua_MeshPart.cpp \
    lua/lua_MeshSkin.cpp \
    lua/lua_Model.cpp \
    lua/lua_Mouse.cpp \
    lua/lua_Node.cpp \
    lua/lua_NodeCloneContext.cpp \
    lua/lua_ParticleEmitter.cpp \
    lua/lua_Pass.cpp \
    lua/lua_PhysicsCharacter.cpp \
    lua/lua_PhysicsCollisionObject.cpp \
    lua/lua_PhysicsCollisionObjectCollisionListener.cpp \
    lua/lua_PhysicsCollisionObjectCollisionPair.cpp \
    lua/lua_PhysicsCollisionShape.cpp \
    lua/lua_PhysicsCollisionShapeDefinition.cpp \
    lua/lua_PhysicsConstraint.cpp \
    lua/lua_PhysicsController.cpp \
    lua/lua_PhysicsControllerHitFilter.cpp \
    lua/lua_PhysicsControllerHitResult.cpp \
    lua/lua_PhysicsControllerListener.cpp \
    lua/lua_PhysicsFixedConstraint.cpp \
    lua/lua_PhysicsGenericConstraint.cpp \
    lua/lua_PhysicsGhostObject.cpp \
    lua/lua_PhysicsHingeConstraint.cpp \
    lua/lua_PhysicsRigidBody.cpp \
    lua/lua_PhysicsRigidBodyParameters.cpp \
    lua/lua_PhysicsSocketConstraint.cpp \
    lua/lua_PhysicsSpringConstraint.cpp \
    lua/lua_PhysicsVehicle.cpp \
    lua/lua_PhysicsVehicleWheel.cpp \
    lua/lua_Plane.cpp \
    lua/lua_Platform.cpp \
    lua/lua_Properties.cpp \
    lua/lua_Quaternion.cpp \
    lua/lua_RadioButton.cpp \
    lua/lua_Ray.cpp \
    lua/lua_Rectangle.cpp \
    lua/lua_Ref.cpp \
    lua/lua_RenderState.cpp \
    lua/lua_RenderStateStateBlock.cpp \
    lua/lua_RenderTarget.cpp \
    lua/lua_Scene.cpp \
    lua/lua_ScreenDisplayer.cpp \
    lua/lua_Script.cpp \
    lua/lua_ScriptController.cpp \
    lua/lua_ScriptTarget.cpp \
    lua/lua_ScriptTargetEvent.cpp \
    lua/lua_ScriptTargetEventRegistry.cpp \
    lua/lua_Slider.cpp \
    lua/lua_Sprite.cpp \
    lua/lua_SpriteBatch.cpp \
    lua/lua_SpriteBatchSpriteVertex.cpp \
    lua/lua_Technique.cpp \
    lua/lua_Terrain.cpp \
    lua/lua_TerrainPatch.cpp \
    lua/lua_Text.cpp \
    lua/lua_TextBox.cpp \
    lua/lua_Texture.cpp \
    lua/lua_TextureSampler.cpp \
    lua/lua_Theme.cpp \
    lua/lua_ThemeSideRegions.cpp \
    lua/lua_ThemeStyle.cpp \
    lua/lua_ThemeThemeImage.cpp \
    lua/lua_ThemeUVs.cpp \
    lua/lua_TileSet.cpp \
    lua/lua_Touch.cpp \
    lua/lua_Transform.cpp \
    lua/lua_TransformListener.cpp \
    lua/lua_Vector2.cpp \
    lua/lua_Vector3.cpp \
    lua/lua_Vector4.cpp \
    lua/lua_VertexFormat.cpp \
    lua/lua_VertexFormatElement.cpp \
    lua/lua_VerticalLayout.cpp
} else {
    DEFINES += GP_NO_LUA_BINDINGS
}









### linux: PRE_TARGETDEPS += $$PWD/../external-deps/lib/linux/x86_64/libgplay3d-deps.a
### linux: SOURCES += core/PlatformSDL2.cpp
### linux: SOURCES += core/gplay3d-main-linux.cpp
### linux: QMAKE_CXXFLAGS += -lstdc++ -pthread -w
### linux: DEFINES += __linux__
### linux: INCLUDEPATH += /usr/include/gtk-2.0
### linux: INCLUDEPATH += /usr/lib/x86_64-linux-gnu/gtk-2.0/include
### linux: INCLUDEPATH += /usr/include/atk-1.0
### linux: INCLUDEPATH += /usr/include/cairo
### linux: INCLUDEPATH += /usr/include/gdk-pixbuf-2.0
### linux: INCLUDEPATH += /usr/include/pango-1.0
### linux: INCLUDEPATH += /usr/include/gio-unix-2.0
### #linux: INCLUDEPATH += /usr/include/freetype2
### linux: INCLUDEPATH += /usr/include/glib-2.0
### linux: INCLUDEPATH += /usr/lib/x86_64-linux-gnu/glib-2.0/include
### linux: INCLUDEPATH += /usr/include/pixman-1
### linux: INCLUDEPATH += /usr/include/libpng12
### linux: INCLUDEPATH += /usr/include/harfbuzz
### # copy res
### #linux: QMAKE_POST_LINK += $$quote(rsync -rau $$PWD/../res $$DESTDIR$$escape_expand(\n\t))
### # symbolic link res
### linux: QMAKE_POST_LINK += $$quote(ln -sfn $$PWD/../res $$DESTDIR/res$$escape_expand(\n\t))

macx: OBJECTIVE_SOURCES += PlatformMacOSX.mm
macx: OBJECTIVE_SOURCES += gplay3d-main-macosx.mm
macx: QMAKE_CXXFLAGS += -x c++ -x objective-c++ -stdlib=libc++ -w -arch x86_64
macx: LIBS += -F/System/Library/Frameworks -framework GameKit
macx: LIBS += -F/System/Library/Frameworks -framework IOKit
macx: LIBS += -F/System/Library/Frameworks -framework QuartzCore
macx: LIBS += -F/System/Library/Frameworks -framework OpenAL
macx: LIBS += -F/System/Library/Frameworks -framework OpenGL
macx: LIBS += -F/System/Library/Frameworks -framework Cocoa
macx: LIBS += -F/System/Library/Frameworks -framework Foundation

win32: PRE_TARGETDEPS += $$PWD/../external-deps/lib/windows/x86_64/Debug/gplay3d-deps.lib
win32: SOURCES += core/PlatformSDL2.cpp
win32: SOURCES += core/gplay3d-main-windows.cpp
win32: DEFINES += WIN32 _UNICODE UNICODE
win32: INCLUDEPATH += $$(DXSDK_DIR)/Include
win32: INCLUDEPATH += $$PWD/../external-deps/include/compat/msvc
win32: QMAKE_CXXFLAGS_WARN_ON -= -w34100
win32: QMAKE_CXXFLAGS_WARN_ON -= -w34189
win32: QMAKE_CXXFLAGS_WARN_ON -= -w4302
PWD_WIN = $${PWD}
PWD_WIN ~= s,/,\\,g
PWD_DEST_WIN = $$DESTDIR
PWD_DEST_WIN ~= s,/,\\,g
win32: QMAKE_POST_LINK += $$quote(xcopy $$PWD_WIN\..\res $$PWD_DEST_WIN\res\ /s /y /d$$escape_expand(\n\t))

DISTFILES += \
    ../res/core/shaders/common/bgfx_shader.sh \
    ../res/core/shaders/common/common.sh \
    ../res/core/shaders/common/gplay.sh \
    ../res/core/shaders/common/shaderlib.sh \
    ../res/core/shaders/common/varying.def.sc \
    ../res/core/shaders/test/cubes.io \
    ../res/core/shaders/debug/texture.frag \
    ../res/core/shaders/gbuffer/gbuffer.frag \
    ../res/core/shaders/gbuffer/viewport.frag \
    ../res/core/shaders/lighting/directionnalLight.frag \
    ../res/core/shaders/lighting/pointLight.frag \
    ../res/core/shaders/test/cubes.frag \
    ../res/core/shaders/debug/texture.vert \
    ../res/core/shaders/gbuffer/gbuffer.vert \
    ../res/core/shaders/gbuffer/viewport.vert \
    ../res/core/shaders/lighting/pointLight.vert \
    ../res/core/shaders/test/cubes.vert
