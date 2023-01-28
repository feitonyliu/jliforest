struct BinaryTree
    value::Int
    left::Union{BinaryTree,Nothing}
    right::Union{BinaryTree,Nothing}
end

# function to create a new node
function newnode(val)
    return BinaryTree(val, nothing, nothing)
end

# function to insert a new value in the binary tree
function insert(root::BinaryTree, val)
    if val < root.value
        if root.left == nothing
            root.left = newnode(val)
        else
            insert(root.left, val)
        end
    elseif val > root.value
        if root.right == nothing
            root.right = newnode(val)
        else
            insert(root.right, val)
        end
    end
end

# function to search for a value in the binary tree
function search(root::BinaryTree, val)
    if root == nothing
        return false
    elseif root.value == val
        return true
    elseif val < root.value
        return search(root.left, val)
    else
        return search(root.right, val)
    end
end

# create an empty binary tree
tree = nothing

# insert some values into the tree
insert(tree, 7)
insert(tree, 4)
insert(tree, 9)
insert(tree, 2)
insert(tree, 6)

# search for a value in the tree
search(tree, 6)

