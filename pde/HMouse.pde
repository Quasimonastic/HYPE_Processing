public static class HMouse implements HLocatable {
	private PApplet _app;
	private int _button;
	private boolean _started, _moved, _isPressed, _isReleased, _isClicked;
	public HMouse(PApplet app) {
		_app = app;
	}
	public boolean started() {
		return _started;
	}
	public void handleEvents() {
		if(!_started && _app.pmouseX+_app.pmouseY > 0) _started = true;
		_button = _app.mouseButton;
		if(!_moved) _moved = (_app.pmouseX != 0) || (_app.pmouseY != 0);
	}
	public float x() {
		return _app.mouseX;
	}
	public float y() {
		return _app.mouseY;
	}
	public HMouse move(float dx, float dy) {
		return this;
	}
}