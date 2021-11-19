<?php
include 'header.php';
require '../function/function.php';
$conn = connect();
?>
<!-- Main content -->
<section class="invoice">
  <h1 class="page-header text-center">The University of Manila</h1>
    <div class="row invoice-info">
      <div class= "container">
            <div class="text-center font-weight-bold">(CERTIFICATE OF REGISTRATION)</div>
            <div class="text-center font-weight-bold">(Important: To be presented to Professor)</div>
          </div>
      </div>
  <br />
    <h4>
      <div class="row">
        <div class="col-sm-0 ml-2 font-weight-bold">
          Name:
        </div>
        <div class="col-sm-7">
          Otod, Jose Ryan P.
        </div>
        <div class="col-sm-0 ml-6 font-weight-bold">
          College of:
        </div>
        <div class="col">
          BSCS SET A - 3rd Year
        </div>
      </div>
    </h4>
    <!-- Table row -->
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table table-bordered">
          <thead>
          <tr>
            <th>Grade/Year</th>
            <th class="text-center">Subjects</th>
            <th class="text-center">Units</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td class= "text-center" rowspan="6">3rd Year</td>
            <td class="text-center">HCI 101</td>
            <td class="text-center">3</td>
          </tr>
          <tr>
            <td class="text-center">NC 101</td>
            <td class="text-center">3</td>
          </tr>
          <tr>
            <td class="text-center">CS 20</td>
            <td class="text-center">3</td>
          </tr>
          <tr>
            <td class="text-center">PL 101</td>
            <td class="text-center">3</td>
          </tr>
          <tr>
            <td class="text-center">GV 101</td>
            <td class="text-center">3</td>
          </tr>
          <tr>
            <td class="text-center">PD 101</td>
            <td class="text-center">3</td>
          </tr>
          <tr>
            <td class="text-center" colspan="2"></td>
            <td class="text-center">18</td>
          </tr>
          </tbody>
        </table>
      </div>
      <!-- /.col -->
    </div>
    

    <div class="row">
      <div class="col-6">
        <p class="lead">Overall Total</p>

        <div class="table-responsive">
          <table class="table">
            <tr>
              <th style="width:50%">Total Fees</th>
              <td>₱10,100</td>
            </tr>
            <tr>
              <th>Back Accounts</th>
              <td>₱0</td>
            </tr>
            <tr>
              <th>Total</th>
              <td>₱11,315</td>
            </tr>
            <tr>
              <th>Other Charges: Library Fee</th>
              <td>₱1,215</td>
            </tr>
          </table>
        </div>
      </div>
      <!-- /.col -->
      <div class="col-6">
        <p class="lead">Terms of Payment</p>

        <div class="table-responsive">
          <table class="table">
            <tr>
              <th style="width:50%">Deposit</th>
              <td>₱</td>
            </tr>
            <tr>
              <th>Down</th>
              <td>₱1,500</td>
            </tr>
            <tr>
              <th>Prelim</th>
              <td>₱3,200</td>
            </tr>
            <tr>
              <th>Midterm</th>
              <td>₱3,200</td>
            </tr>
            <tr>
              <th>Final</th>
              <td>₱3,200</td>
            </tr>
          </table>
        </div>
      </div>
      
      
    </div>
    <!-- /.row -->
    <p>Note: Check carefully if all the subjects you want to enroll in are written in each separate sheet.(ALL FEES AND BALANCES ARE SUBJECT TO FINAL AUDIT)</p>
    <br />
    <h5 class="text-center"><u>FEES, PAYMENTS AND BALANCES</u></h5>
    <blockquote><p>Arrangement for the installment payments upon enrollment will be considered as final. No further
      deferments or changes will be allowed during examinations. All fees and balances are subject to final audit</p>
      <p>Note: The Accounting and Records Offices must be notified in writing when subject or courses are dropped.</p>
      <p>A student who drops after paying one or more installments will not be relieved of the responsibility of paying the balances of his fees. 
      Adjustment of fees will be govern by the provisions in the catalogue.
      </p>
  </section>
<?php include 'footer.php';
?>