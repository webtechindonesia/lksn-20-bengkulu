<template>
    <div>
        <navbar></navbar>
    <div class="container mt-3">
        <div class="card" >
            <div class="card-body">
                <h5 class="card-title">Makan gratis tiap hari apa?</h5>
                <h6 class="card-subtitle mb-2 text-muted">created by: hr_2 | deadline: 11/18/2020,8:14:58 PM</h6>
                <p class="card-text">akan diadakan makan siang gratis tiap minggunya di hari tertentu antara selasa/rabu/jumat</p>
                <button type="button" class="btn btn-primary mt-2"  data-toggle="modal" data-target="#selasa">Selasa</button><br>
                <button  type="button" class="btn btn-primary mt-2"  data-toggle="modal" data-target="#exampleModal">Rabu</button><br>
                <button  type="button" class="btn btn-primary mt-2"  data-toggle="modal" data-target="#exampleModal">Kamis</button><br>
            </div>
        </div>
        <div class="card mt-3" >
            <div class="card-body">
                <h5 class="card-title">WFO/WFH</h5>
                <h6 class="card-subtitle mb-2 text-muted">created by: hr_1 | deadline: 11/18/2020,8:14:58 PM</h6>
                <p class="card-text">lebih produktif wfo atau wfh?</p>
                <div><p class="d-inline-block">WFO </p> 50%<p></p></div>
                <div><p class="d-inline-block">WFH </p> 50%<p></p></div>
            </div>
        </div>
        </div>

<!-- Modal -->
<div class="modal fade" id="selasa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="" method="post" @submit.prevent="login">
      <div class="modal-body">
            
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title">
                    
                </div>
                <div class="form-group">
                    <label for="title">Description</label>
                    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title">
                </div>
                <div class="form-group">
                    <label for="title">Dead Line</label>
                    <input type="datetime-local" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Dead Line">
                </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Create</button>
      </div>
                  </form>
    </div>
  </div>
</div>
    </div>
    
</template>
<script>
export default {
    
}
</script>