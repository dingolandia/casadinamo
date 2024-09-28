export const transformEndpointToMockName = (endpointName: string): string => {
  // Remove o sufixo '_ENDPOINT' e divide por sublinhados
  const parts = endpointName.replace('_ENDPOINT', '').split('_');

  // Transforma em camelCase e adiciona 'Mock' no final
  return (
    parts
      .map((part, index) =>
        index === 0
          ? part.toLowerCase()
          : part.charAt(0) + part.slice(1).toLowerCase()
      )
      .join('') + 'Mock'
  );
};
