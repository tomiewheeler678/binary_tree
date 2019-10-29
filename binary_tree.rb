class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def insert(item, value)
    if item.payload == value
      return item.payload 
    elsif
      item.payload <= value
        insert(payload.left, value)
    else
      item.payload >= value
        insert(payload.right, value)
    end
  end

  def inOrder(item)
    if item.payload == nil
      puts "exit procedure"
    elsif
      item.left
        inOrder(item.left)
      puts item.value
    else
      item.right
        inOrder(item.right)
      puts item.value
    end
  end

  def treeSort(items)
    item = []

  end
end

seven = BinaryTree.new(7, nil, nil)
five  = BinaryTree.new(5, nil, nil)
four  = BinaryTree.new(4, nil, nil)
six   = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two   = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)

inOrder(item)