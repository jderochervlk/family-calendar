type clientOptions = {
  astraDatabaseId: string,
  astraDatabaseRegion: string,
  applicationToken: string,
}

type create = (string, string) => string

type collection = {create: create}

type namespaceCollection = {collection: string => collection}

type namespace = string => namespaceCollection

type client = {namespace: namespace}

@module("@astrajs/collections")
external createClient: (clientOptions, int) => client = "createClient"
