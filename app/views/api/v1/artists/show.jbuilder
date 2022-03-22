json.Artist do
  json.name @artist.name
  json.lastname @artist.apellido
  json.gene @artist.genero
  json.country @artist.pais
end
