import React,{Component,useState,useEffect} from "react";
import { NavLink, Link } from "react-router-dom";

const ListDepense = () => {
 

         return(
            <>
            <div className="wrapper">
          
                    {/* Content Wrapper. Contains page content */}
                    <div className="content-wrapper">
                    {/* Content Header (Page header) */}
                    <section className="content-header">
                        <h1>
                        Data Tables
                        <small>advanced tables</small>
                        </h1>
                        <ol className="breadcrumb">
                        <li><a href="#"><i className="fa fa-dashboard" /> Home</a></li>
                        <li><a href="#">Tables</a></li>
                        <li className="active">Data tables</li>
                        </ol>
                    </section>
                    {/* Main content */}
                    <section className="content">
                        <div className="row">
                        <div className="col-xs-12">
                            
                            {/* /.box */}
                            <div className="box">
                            <div className="box-header">
                                <h3 className="box-title">TRANSFER LIST</h3><br/><br/>
                                
                               
                            </div>
                            {/* /.box-header */}
                            {/* {!alldepositlst ?
                                <div>
                                    <center><h4>LOADING ...</h4><ClipLoader color="#055a8c" loading="true"  size={30} /></center>
                                </div>
                                        
                                

                                    : 
                                    alldepositlst.length ? */}
                                <div className="box-body">
                                    <table  className="table exampledatatable table-bordered table-striped">
                                        <thead>
                                            <tr className="bg-blue">
                                                <th>#</th>
                                                <th>date</th>
                                                <th>Email</th>
                                                <th>Farine</th> 
                                                <th>Sucre+sel</th>
                                                <th>L'Huile</th>
                                                <th>Bois+scuire</th>
                                                <th>emballages</th>
                                                <th>Total</th>
                                                <th>Editer</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        {/* {alldepositlst.map((d, i) => {      */}
                                        // Return the element. Also pass key     
                                        {/* return (
                                        <tr key={d.id}>
                                            <td>{d.id}</td> 
                                            <td><b>{d.amount}</b></td> 
                                            
                                            <td className="bg-green "><b>{d.receiver}</b></td> 
                                            <td><b>{d.transaction_date}</b></td> 
                                            <td>
                                                <Link to={`/detailswithdrewal`} state={{ from: d.id}}  > 
                                                    <button type="button" className="btn btn-success waves-effect waves-light iconmargin" data-toggle="tooltip" data-placement="top" title=".icofont-home ">
                                                        <i className="fa fa-eye"></i>
                                                    </button>
                                                </Link>
                                            </td>
                                        </tr>
                                        )  */}
                                        {/* })} */}
                                         </tbody>
                                          {/* <tfooter>
                                            <div className="row">
                                              <div className="col-sm-12 p-0">  
                                                <center>
                                                  <nav aria-label="Page navigation example">
                                                    <ul class="pagination">
                                                      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                      <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                                    </ul>
                                                  </nav>
                                                </center> 
                                              </div>
                                            </div>
                                          </tfooter> */}
                                    </table>
                                    </div>
                                {/* :   */}

                                {/* <div>
                                            
                                    <center> <img className="nodata logo" src="assets/icon/Nodata-cuate.svg" alt="HANKAP"/>
                                        <h2>No data available !</h2>
                                    </center>
                                    
                                    
                                </div> */}
                                    
                                    
                                {/* } */}
                                                                            
                                                          
                            {/* /.box-body */}
                            </div>
                            {/* /.box */}
                        </div>
                        {/* /.col */}
                        </div>
                        {/* /.row */}
                    </section>
                    {/* /.content */}
                    </div>
                    {/* /.content-wrapper */}




                                
        </div>
        </>
             
         )
     
 };
 export default ListDepense;