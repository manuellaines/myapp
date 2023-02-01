export default function Login(){
    const css = `
    body {
        background-image: url("images/authentication-bg.jpg") ! important;
        background-size:cover;
    }
    `
    return(
        <>
        <div className="bglogin">
            <div className="login-box">
                {/* /.login-logo */}
                <div className="login-box-body">
                    <div className="text-center">
                        <img src="images/icons8-money-50.png" alt="HANKAP" />
                    </div>
                    <h3 className="text-center text-primary">Login</h3>
                    <form >
                    <div className="form-group has-feedback">
                        <input type="email"  name="email"  className="form-control" required="required"/>
                        <span className="glyphicon glyphicon-user form-control-feedback" />
                    </div>
                    
                    <div className="form-group has-feedback">
                        <input type="password" name="password"   className="form-control" required="required"/>
                        <span className="glyphicon glyphicon-lock form-control-feedback" />
                    </div>
                    <div className="row">
                        <div className="col-xs-8">
                        <div className="checkbox icheck">
                            
                        </div>
                        </div>
                        {/* /.col */}
                        <div className="col-xs-4">
                        <button type="submit" className="btn btn-primary btn-md btn-block waves-effect text-center m-b-20" >
                                        
                                        
                                        LOGIN
                                        </button>
                        </div>
                        {/* /.col */}
                    </div>
                    </form>
                  
                    <a href="#">I forgot my password</a><br/>
                    {/* <NavLink exact to="/signup" className="text-center">Register a new membership</NavLink> */}
                        
                </div>
                
            </div>
            <style>{css}</style>
        </div>
        </>
    )
}