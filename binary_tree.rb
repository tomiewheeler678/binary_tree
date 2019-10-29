class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def search(item, value)
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

  def sort(node)
    trunk = BinaryTree.new(node.shift)
    while !node.empty?
      @value = trunk
      figure = node.shift
      while @value
        if figure < @value.payload
          if @value.left.nil?
            new_value = BinaryTree.new(figure)
            @value.left = new_value
            @value = new_value
          else
            @value = @value.left
          end
        else
          if @value.right.nil?
            new_value = BinaryTree.new(figure)
            @value.right = new_value
            @value = new_value
          else
            @value = @value.right
          end
        end
      end
    end
    new_figure = build_figure(trunk)
    puts new_figure
  end


  def build_treeSort(value)
    return [] if value.nil?
    results = []
    results.concat build_treeSort(value.left)
    results << value.payload
    results.concat build_treeSort(value.right)
    results
  end
end

seven = BinaryTree.new(7, nil, nil)
five  = BinaryTree.new(5, nil, nil)
four  = BinaryTree.new(4, nil, nil)
six   = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two   = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)

figure = [7, 4, 9, 1, 6, 14, 10]
sort(figure)