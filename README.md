# Desafío eCommerce Parte I

## Creación de categorías
En nuestro modelo  `Category` agregamos un `category_id` para almacenar la categoría padre y dentro del modelo, esta categoría se denomina `parent`, mientras que las categorías que lo poseen como padre, se denominan `children`

```ruby
c1 = Category.create(name: 'Parent category')
c2 = Category.create(name: 'Child category', parent: c1)
```
O alternativamente lo podemos asignar posterior a la creación de la subcategoría
```ruby
c3 = Category.create(name: 'Other child category')
c3.parent = c1
```
De la misma manera podemos asignar categorías hijas a un padre
```ruby
c1 = Category.create(name: 'Child category 1')
c2 = Category.create(name: 'Child category 2')
c3 = Category.create(name: 'Parent Category', children: {c1,c2})
```
O alternativamente lo podemos asignar posterior a la creación de la subcategoría
```ruby
c4 = Category.create(name: 'Parent category')
c4.children << c1
c4.children << c2
```
## Nuestro Modelo
![ERD diagram](Untitled.pdf)

