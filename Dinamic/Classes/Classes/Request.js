function Request() {
	this.args = null;
	this.getParameter = getParameter;
	
	var url = document.location.toString();
	var tmp = url.split('?');
	if (tmp.length > 1) {
		tmp = tmp[1].split('&');
		this.args = new Array();
		for (var i=0; i<tmp.length; i++) {
			this.args[i] = tmp[i].split('=');
		}
	}
}

function getParameter(id) {
	if (this.args != null) {
		for (var i=0; i<this.args.length; i++) {
			if (this.args[i][0] == id) {
				return this.args[i][1];
			}
		}
	}
	return null;
}
