import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Ser",
    id: "Ser-def31913-975f-4101-9c57-9b9a57f5d6b2"
}
service / on new http:Listener(9090) {

    @display {
        label: "Se",
        id: "Ser1-d184ac08-58cf-4808-ac69-88899fe3a26e"
    }
    http:Client seClient;

    function init() returns error? {
        self.seClient = check new ("");
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
