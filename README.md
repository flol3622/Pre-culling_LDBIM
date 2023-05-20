# Pre-Culling Linked Data BIM
This project demonstrates various features and functionalities of a pre-culling linked data building information model (BIM).

## Demo
### Basic use case
In the basic use case, the model displays an entire building with a default limit set for a maximum of 20 entities to load at once. Users can navigate through the building, with entities loading on demand, and also have the flexibility to adjust the maximum number of entities to load at once. The model adapts to these changes in real-time.

https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/665f8f8a-357d-4a03-b194-c903ca784767

### Different sources and formats
This demo showcases the versatility of the prototype to load different sources and formats. It selects an abstract shapes database that holds various geometric file formats, including STL, OBJ, and GLTF, either as literals or as links to external files hosted on GitHub. 

https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/4d7f3e1e-5422-4a74-806e-1f49ba636f2f

### Semantic-driven filtering
This demonstration illustrates how semantics can be used to filter the entities to load in the viewer. In this specific example, entities are filtered to only display those of type `prod:Window`.

https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/7f2b6c38-0d9b-470f-a646-ac24a3ab06df

### Semantic-driven colorization
In this demo, the entities' semantic attributes are used to colorize them in the viewer. This example colorizes the entities based on their `flupke:color` property, which holds a color code.

https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/8d14050c-e7fd-4ac6-a38a-9de1c7602664

### In-query, OBJ-string analytics
This demo introduces the first culling algorithm, where the `bot:Space` entities are filtered based on their OBJ definition, analyzed by the endpoint using a string operation. The cache management mechanism is also demonstrated, ensuring that the viewer's scene does not exceed an entity count of 20.

https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/92e60daa-17b7-4518-aad1-4f6ce6d1f80b

### In situ, GeoSPARQL
This demo exhibits the second culling algorithm, which utilizes GeoSPARQL functions. Because GeoSPARQL functions are limited to 2D space, the viewer hovering over a `bot:Space` triggers the loading of that particular space.

https://github.com/flol3622/Pre-culling_LDBIM/assets/93721496/9557412f-89dc-41d3-bf2c-fbe9d40e87d1
