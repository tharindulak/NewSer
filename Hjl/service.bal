import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Hjl",
    id: "Hjl-0a20c35e-6405-4304-81f9-530b9b17ad93"
}
service / on new http:Listener(9090) {
    @display {
        label: "Cog",
        id: "Col-cd339aa6-a779-4b0b-9f38-236cd04329e2"
    }
    http:Client cogClient1;

    @display {
        label: "Cog",
        id: "Col-cd339aa6-a779-4b0b-9f38-236cd04329e2"
    }
    http:Client cogClient;

    function init() returns error? {
        self.cogClient1 = check new ("");
        self.cogClient = check new ("");
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
