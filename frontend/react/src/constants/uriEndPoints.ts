export const fullUrl = "http://localhost:1337";
export const settingsEndpoint = "/api/configuracaos/1";
export const allStoreItemsEndpoint = "/api/lojas?populate=*";
export const menuItemsEndpoint = "/api/menu-items?filters[ativo][$eq]=true&populate[tipo_link][fields]=descricao&populate[conteudo][fields]=titulo&populate[conteudo][fields]=locale&sort[0]=ordem";
export const pageContentEndpoint = "/api/conteudos/";