# LaTeX Thesis Report Template With Devcontainer Integration
This repository is an optimized solution for those who wish to write thesis reports using LaTeX. It not only offers a comprehensive LaTeX template, but also instructions for seamless utilization and modification within a development container (devcontainer).

## LaTeX Features 
- Custom UGent-style title page
- Well-organized folder structure for images, chapters, appendices, etc.
- Easy-to-use bibliography setup
- Custom font setup (Work Sans, Source Code Pro, Source Serif Pro)
- Examples of tables, figures, equations, listings, acronyms, and more
- Custom layout for extended abstracts
- Multilingual support (Dutch, English, French)

## Devcontainer Features
- LuaLaTeX 2022
- LaTeX compiler and workshop
- Python for LaTeX linting
- TeX Live Utility (tlmgr) for LaTeX package management
- Comprehensive set of required LaTeX packages
- Integrated spell checker
- Aesthetically pleasing light theme for VSCode
- Excalidraw plugin for intuitive diagram creation
- Git integration for efficient version control
- Jupyter notebook integration for Python code development and testing
- GitHub Copilot support

## Prerequisites
- [Docker](https://www.docker.com/products/docker-desktop/)
- [VSCode](https://code.visualstudio.com/)
    - [VSCode Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Initial Setup
### Step-by-Step Guide
1. **In VSCode:**
    1. Open the command palette using `Ctrl+Shift+P`.
    2. Input `Devcontainer: Clone Repository in Container Volume...`.
    3. Paste the link to this repository: `https://github.com/flol3622/Pre-culling_LDBIM`.
    4. Click on `+ Create a new volume...`.
    5. Enter a unique name for the volume (e.g., "thesis").
    6. Wait while the devcontainer builds.
2. **Once the devcontainer is built:**
    1. Open a new terminal (`Terminal > New Terminal`).
    2. Configure git with your name: `git config --global user.name "[Your Name]"`.
    3. Configure git with your email: `git config --global user.email "[Your Email]"`.


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
