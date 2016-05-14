<todo>
  <h3>{ heading }</h3>
  <ul>
	<li each={ items }>{ title }<button onclick={ parent.remove }>Delete</button></li>
  </ul>
  <form onsubmit={ add }>
	<input>
	<button>Add #{ items.length + 1 }</button>
  </form>

<script>
var api = new MT.DataAPI({
	baseUrl:  "http://riatw.me/mt/mt-data-api.cgi",
	clientId: "collect"
});

this.items = [
  { title: "a" }
]
add(e) {
	var input = e.target[0]
	this.items.push({ title: input.value })
	input.value = ''
}
remove(event) {
	// ループ要素
	var item = event.item

	// 配列の中のインデックス
	var index = this.items.indexOf(item)

	// 配列から削除
	this.items.splice(index, 1)
}

var siteId = 5;

var params = {};
var that = this;

api.listEntries(siteId, params, function(response) {
	if (response.error) {
		// エラー処理
		return;
	}
	console.log(response.items)
	that.items = response.items
	that.update()
});

</script>

</todo>
