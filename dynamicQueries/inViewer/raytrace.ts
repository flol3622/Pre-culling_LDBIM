function findRoom(viewer: RefViewer, lru: RefLRU, position: number[]): string | undefined {
    const down = [0, -1, 0];
    const up = [0, 1, 0];
    const rooms: string[] = [];
  
    lru.current?.forEach((value, key) => {
      if (value.botType === "Space") {
        rooms.push(key);
      }
    });
  
    function pick(direction: number[]) {
      return viewer.current?.scene.pick({
        origin: position,
        direction: direction,
        pickSurface: true,
        includeEntities: rooms,
      });
    }
  
    const resultDown = pick(down);
    const resultUp = pick(up);
  
    if (resultDown?.entity === resultUp?.entity) {
      return resultDown?.entity?.id;
    }
  }
  
