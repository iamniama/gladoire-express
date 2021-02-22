document.querySelector('#sess_date').addEventListener('change', (evt)=>{
    //alert((document.querySelector('#sess_date').valueAsDate).getTime() / 1000)
    let tstamp = document.querySelector('#sess_date').value
    alert(tstamp.getTime())
    //let tstamp = Math.floor((document.querySelector('#sess_date').valueAsDate).getTime() / 1000)
    alert(`DEBUG: ${tstamp}`)
    let mdata = fetch(`https://api.farmsense.net/v1/moonphases/?d=${tstamp}`)
        .then(response => response.json())
        .then((mdata)=>{
            document.querySelector('#sess_moon').value = `${mdata[0].Moon[0]}, ${mdata[0].Phase}`
        })
})