import matplotlib.pyplot as plt
import rdflib

levels = [
    "inst:level_1xS3BCk291UvhgP2dvNMKI",
    "inst:level_1xS3BCk291UvhgP2dvNMQJ",
    "inst:level_1xS3BCk291UvhgP2dvNsgp",
    "inst:level_1xS3BCk291UvhgP2dvNtSE"
]

data = {}
for level in levels:
    g = rdflib.Graph()
    qres = g.query("""
      PREFIX props: <https://w3id.org/props#>
      PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
      PREFIX bot: <https://w3id.org/bot#>
      PREFIX inst: <https://172.16.10.122:8080/projects/1001/>
      SELECT ?s ?o
      WHERE {
        SERVICE <http://localhost:7200/repositories/duplex-v1> {
          ?s props:hasSimple2DBoundary ?o .
          ?s rdf:type bot:Space .
          """ + str(level) + """ bot:hasSpace ?s.
        }
      }
      LIMIT 100
      """)
    rooms = {}
    for row in qres:
        polygon_string = row.o.n3()
        polygon_string = polygon_string.replace('POLYGON (', '').replace('()', '').replace(')', '').replace(
            '"', '').replace('^^<http://www.opengis.net/ont/geosparql#wktLiteral>', '')
        coordinate_pairs = polygon_string.split(', ')
        coordinates = [(int(pair.split(' ')[0]), int(pair.split(' ')[1]))
                       for pair in coordinate_pairs]
        row.o.n3()
        room = row.s.n3().replace(
            '<https://172.16.10.122:8080/projects/1001/', '').replace('>', '')
        rooms[room] = coordinates
    data[level] = rooms


def showLevel(level):
    level = data[level]
    plt.figure()
    for room, polygon in level.items():
        xs, ys = zip(*polygon)
        plt.plot(xs, ys, label=room)
    plt.axis('equal')
    plt.legend(bbox_to_anchor=(1, 1))
    plt.show()


def showRoom(level, room):
    polygon = data[level][room]
    plt.figure()
    xs, ys = zip(*polygon)
    plt.plot(xs, ys)
    plt.axis('equal')
    plt.show()


for level in levels:
    print(level)
    print(data[level].keys())
    showLevel(level)

showRoom("inst:level_1xS3BCk291UvhgP2dvNMKI", "room_1xS3BCk291UvhgP2dvNvkw")