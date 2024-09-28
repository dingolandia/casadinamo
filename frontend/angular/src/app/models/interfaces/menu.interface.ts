interface Content {
  id: number;
  titulo: string;
  locale: string;
}

interface TipoLink {
  id: number;
  descricao: string;
}

export interface ImainMenuItems {
  id: number;
  ordem: number;
  descricao: string;
  url: string;
  conteudo: Content[];
  ativo: boolean;
  createdAt: string;
  updatedAt: string;
  tipo_link: TipoLink;
}
