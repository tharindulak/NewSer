import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "hjk",
    id: "hjk-aa48dfcf-30e0-41af-a783-ffed94695882"
}
service / on new http:Listener(9090) {

    @display {
        label: "Ser",
        id: "Ser-def31913-975f-4101-9c57-9b9a57f5d6b2"
    }
    http:Client serClient;

    function init() returns error? {
        self.serClient = check new ("");
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
