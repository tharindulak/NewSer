import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

@display {
    label: "Cog",
    id: "Col-cd339aa6-a779-4b0b-9f38-236cd04329e2"
}

service / on new http:Listener(9090) {
    @display {
        label: "http",
        id: "http-208753d7-7880-4923-ba56-0db40d9c3ad0"
    }
    http:ClientOAuth2Handler httpEp;

    function init() returns error? {
        self.httpEp = new (config = {
            tokenUrl: "",
            clientId: "",
            clientSecret: ""
        });

    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
