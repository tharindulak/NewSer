import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

@display {
    label: "Se",
    id: "Ser1-d184ac08-58cf-4808-ac69-88899fe3a26e"
}

service / on new http:Listener(9090) {

    @display {
        label: "Cog",
        id: "Col-cd339aa6-a779-4b0b-9f38-236cd04329e2"
    }
    http:Client cogClient;

    function init() returns error? {
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
