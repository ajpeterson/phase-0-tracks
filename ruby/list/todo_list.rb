# 6.6 Peer Pairing
# Andrew Peterson
# Edward Kim

class TodoList
  def initialize(list)
    @list = ["do the dishes", "mow the lawn"]
  end

  def get_items
    @list
  end

  def add_item(item1)
    @list << item1
  end

  def delete_item(item1)
    @list.delete(item1)
  end

  def get_item(i)
    @list[i]
  end
end
