from flask import Flask

# Create a Flask application instance
app = Flask(__name__)

# Define a route and a view function
@app.route('/')
def hello_world():
    return 'Hello, Green Portal Dev Environment!'

if __name__ == '__main__':
    # Run the Flask app in development mode on port 5000
    app.run(host='0.0.0.0', port=5000, debug=True)
