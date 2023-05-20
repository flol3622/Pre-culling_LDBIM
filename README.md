## Demo
### Basic use case
In the basic use case, the model displays an entire building with a default limit set for a maximum of 20 entities to load at once. Users can navigate through the building, with entities loading on demand, and also have the flexibility to adjust the maximum number of entities to load at once. The model adapts to these changes in real-time.
https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/e0d33aaa-a50d-41a3-8385-d67491f68ddc

### Different sources and formats
This demo showcases the versatility of the prototype to load different sources and formats. It selects an abstract shapes database that holds various geometric file formats, including STL, OBJ, and GLTF, either as literals or as links to external files hosted on GitHub. 
https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/ba1ef613-2a0f-43d7-be3a-5dcb2cb35c88

### Semantic-driven filtering
This demonstration illustrates how semantics can be used to filter the entities to load in the viewer. In this specific example, entities are filtered to only display those of type `prod:Window`.
https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/fa84182b-6ec7-4af3-a752-7259343ad18d

### Semantic-driven colorization
In this demo, the entities' semantic attributes are used to colorize them in the viewer. This example colorizes the entities based on their `flupke:color` property, which holds a color code.
https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/c6624a76-6829-4b73-9f7a-08cf6742eb6c

### In-query, OBJ-string analytics
This demo introduces the first culling algorithm, where the `bot:Space` entities are filtered based on their OBJ definition, analyzed by the endpoint using a string operation. The cache management mechanism is also demonstrated, ensuring that the viewer's scene does not exceed an entity count of 20.
https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/f95cc439-aa08-4dc7-9af5-be37207463d6

### In situ, GeoSPARQL
This demo exhibits the second culling algorithm, which utilizes GeoSPARQL functions. Because GeoSPARQL functions are limited to 2D space, the viewer hovering over a `bot:Space` triggers the loading of that particular space.
https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/533ed4b7-59ce-4669-b180-8567260b4866
