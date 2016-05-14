<todo>
  <h3>{ opts.heading }</h3>
  <ul>
    <li each={ items }>{ title }<button onclick={ parent.remove }>Delete</button></li>
  </ul>
  <form onsubmit={ add }>
    <input>
    <button>Add #{ items.length + 1 }</button>
  </form>
  <script>
    this.items = [
      { title: "a" }
    ]
    add(e) {
      var input = e.target[0]
      this.items.push({ title: input.value })
      input.value = ''
    }
  remove(event) {
  console.log(event);
    // ループ要素
    var item = event.item

    // 配列の中のインデックス
    var index = this.items.indexOf(item)

    // 配列から削除
    this.items.splice(index, 1)
  }
  </script>
</todo>