import 'dart:collection';

void main() {
  BinarySearchTree tree = BinarySearchTree();

  tree.insert(30);

  tree.insert(100);

  tree.insert(10);

  tree.insert(8);

  tree.insert(11);

  tree.insert(2);

  // tree.delete(10);

  // print(tree.contains(10));

  // tree.inorder();

  // print('=====');

  // tree.preOrder();

  // print('======');

  // tree.postOrder();

  // print('=====');

  // tree.breadthFirstSearch();

  print(tree.maxvalue());
}

class Node {
  int data;

  Node? left;

  Node? right;

  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  insert(int data) {
    Node node = Node(data);

    Node? current = root;

    if (root == null) {
      root = node;

      return;
    }

    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = node;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = node;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? current = root;

    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else if (data > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }

  delete(int data) {
    deleteHelper(data, root, null);
  }

  deleteHelper(int data, Node? current, Node? parent) { 
    while (current != null) {
      if (data < current.data) {
        parent = current;
        current = current.left;
      } else if (data > current.data) {
        parent = current;
        current = current.right;
      } else {
        if (current.left != null && current.right != null) {
          current.data = minNode(current.right);
          deleteHelper(data, current, current.right);
        } else {
          if (parent == null) {
            if (current.right == null) {
              root = current.left;
            } else {
              root = current.right;
            }
          } else {
            if (parent.left == current) {
              if (current.right == null) {
                parent.left = current.left;
              } else {
                parent.left = current.right;
              }
            } else {
              if (current.right == null) {
                parent.right = current.left;
              } else {
                parent.right = current.right;
              }
            }
          }
        }

        break;
      }
    }
  }

  minNode(Node? current) {
    if (current?.left == null) {
      return current?.data;
    } else {
      minNode(current?.left);
    }
  }

  inorder() {
    inorderHelper(root);
  }

  inorderHelper(Node? node) {
    if (node != null) {
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }

  preOrder() {
    preOrderHelper(root);
  }

  preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  postOrder() {
    postOrderHelper(root);
  }

  postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }

  breadthFirstSearch() {
    if (root == null) {
      return;
    }

    Queue<Node?> queue = Queue();

    queue.add(root);

    while (queue.isNotEmpty) {
      Node? current = queue.removeFirst();
      print(current?.data);

      if (current?.left != null) {
        queue.add(current?.left);
      }

      if (current?.right != null) {
        queue.add(current?.right);
      }
    }
  }

  minimumvalue() {
    return minHelper(root);
  }

  minHelper(Node? root) {
    if (root?.left == null) {
      return root?.data;
    } else {
      return minHelper(root?.left);
    }
  }

  maxvalue() {
    return maxvalueHelper(root);
  }

  maxvalueHelper(Node? root) {
    if (root?.right == null) {
      return root?.data;
    } else {
      return maxvalueHelper(root?.right);
    }
  }
}
