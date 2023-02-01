
import { BrowserRouter, Route,Navigate,NavLink,useNavigate  } from 'react-router-dom';
export default function Depense(){
    return(
       
        <div>
        <div className="wrapper">
             
            <div className="content-wrapper">
                <section className="content">
                    <div className="row">
                        <div className="col-md-12">
                            <div className="box box-primary">
                                <div className="box-header with-border">
                                    <h3 className="box-title"><i className="fa fa-paper-plane text-info"></i> Send money to a Hankap account</h3>
                                    {/* <p>Votre adresse IP est {ip}</p> */}
                                </div>
                                <form className="form-horizontal " style={{borderLeft :"solid #3c8dbc",borderTop :"solid #3c8dbc", background:'#eee'}}  >
                                    <div className="box-body">
                                        <div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">farine</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option defaultValue>FCFA</option>
                                                <option >KG</option>
                                            </select>
                                        </div>
                                        </div>
                                        <div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">sucre</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option  defaultValue>FCFA</option>
                                                <option >KG</option>
                                            </select>
                                        </div>
                                        </div>
                                        <div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">l'huile</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option defaultValue>FCFA</option>
                                                <option >L</option>
                                            </select>
                                        </div>
                                        </div>
                                        <div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">bois</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option defaultValue>FCFA</option>
                                                
                                            </select>
                                        </div>
                                        </div>
                                        <div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">scuire</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option  defaultValue>FCFA</option>
                                                <option>Sac</option>
                                            </select>
                                        </div>
                                        </div><div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">sel</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option defaultValue>FCFA</option>
                                                <option>KG</option>
                                            </select>
                                        </div>
                                        </div>
                                        <div className="form-group">
                                        <label htmlFor="inputEmail3" className="col-sm-3 control-label">emballages</label>
                                        <div className="col-sm-7">
                                            <input required type="number"className="form-control" name="amount"   id="montant" />
                                        </div>
                                        <div className="col-sm-2">
                                            <select id="currency" className="form-control" name="transaction_currency">
                                                <option defaultValue>FCFA</option>
                                            </select>
                                        </div>
                                        </div>
                                        <div className="form-group">
                                            <label htmlFor="inputPassword3" className="col-sm-3 control-label">Email*</label>
                                            <div className="col-sm-9">
                                              <input required type="email" className="form-control"  name="receiver"  id="reciver" />
                                            </div>  
                                            
                                        </div>

                                        <div className="form-group">
                                            <label htmlFor="inputPassword3" className="col-sm-3 control-label">Reason *</label>
                                            <div className="col-sm-9">
                                                <textarea required className="form-control" rows={3} placeholder="Enter ..." name="raison" id="raison"/>
                                            </div>
                                        </div>
                                        <div className="form-group">
                                        <div className="col-sm-offset-2 col-sm-10">
                                        {/* <NavLink  to="/mywithdrawal" className="btn btn-danger pull-right btn-form">
                                            <i className="fa fa-remove"></i> Cancel
                                        </NavLink> */}
                                        {/* <button   className="btn btn-primary pull-right"  type="submit"></button> */}
                                        <button   className="btn btn-primary pull-right"  type="submit">
                                           
                                            <i className="fa fa-check"></i> Valider
                                        </button>
                                        <div className="pull-right" >
                                            <a href="#" className="btn btn-danger btn-flat">Appercue</a>
                                        </div>
                                        </div>
                                        </div>
                                    </div>
                                    {/* /.box-body */}
                                    <div className="box-footer">
                                        
                                    </div>
                                    {/* /.box-footer */}
                                </form>



                            </div>
                        </div>
                        
                    </div>
                </section>
            </div>

            
          
        </div>
        </div>
    )
}