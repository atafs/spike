var HelloMessage = React.createClass({
  displayName: "HelloMessage",
  render: function render() {
    return React.createElement("h3", null, "Hello ", this.props.name);
  }
});
ReactDOM.render(React.createElement(HelloMessage, { name: "Americo Tomas!!" }), c2_helloworld);
