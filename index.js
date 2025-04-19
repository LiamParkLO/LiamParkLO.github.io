const canvas = document.getElementById("renderCanvas");
const engine = new BABYLON.Engine(canvas, true);
const scene = new BABYLON.Scene(engine);

// Create a basic box
const box = BABYLON.MeshBuilder.CreateBox("box", {size: 2}, scene);

// Create a light
const light = new BABYLON.HemisphericLight("light", new BABYLON.Vector3(0, 1, 0), scene);

    // Create a camera
const camera = new BABYLON.ArcRotateCamera("camera", -Math.PI / 2, Math.PI / 2.5, 10, new BABYLON.Vector3(0, 0, 0), scene);
camera.attachControl(canvas, true);

engine.runRenderLoop(() => {
	scene.render();
});

window.addEventListener('resize', function(){
	engine.resize();
});
