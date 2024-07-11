public class datatableErrorsSearializer {
    @InvocableMethod(label='Serialize datatableErrors' description='Returns a JSON string of the datatableErrors and child objects')
    public static List<Result> serializeErrors(List<Request> reqs) {
        List<Result> res = new List<Result>();
        for(Request req : reqs){
            Result ret = new Result();
            ret.JSONOutput = req.errors.serialize();
            res.add(ret);
        }
        return res;
    }

    public class Request {
        @InvocableVariable(label='Errors for Input' description='datatable errors to serialize' required=true)
        public datatableErrors errors;
      }

      public class Result {
        @InvocableVariable(label='String for Output' description='serialized errors for used with the datatable component' required=true)
        public string JSONOutput;
      }
}