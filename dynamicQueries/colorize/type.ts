export type MetadataLRU = {
    format: Format;
    datatype: Datatype;
    botType?: string;
    [key: string]: string | undefined;
  };