class Category < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :children, class_name: 'Category'
  belongs_to :parent, class_name: 'Category', foreign_key: :category_id, optional: true

  def all_parents
    show_parents(self)
  end

  def all_children
    show_children
  end

  def show_parents(category, parents_result = [])
    if category.parent
      parents_result << category.parent
      return show_parents(category.parent, parents_result)
    else
      return parents_result
    end
  end

  def show_children
    children_result = []
    current_children = self.children.to_a
    i = 0
    c = current_children[i]
    while c
      current_children += c.children
      children_result << c
      i += 1
      c = current_children[i]
    end
    children_result
  end
end
