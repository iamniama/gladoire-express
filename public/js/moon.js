document.querySelector('#sess_date').addEventListener('change', (evt)=>{
    let tstamp = document.querySelector('#sess_date').value
    let mdata = fetch(`https://api.farmsense.net/v1/moonphases/?d=${(new Date(tstamp)).getTime() / 1000}`)
        .then(response => response.json())
        .then((mdata)=>{
            document.querySelector('#sess_moon').value = `${mdata[0].Moon[0]}, ${mdata[0].Phase}`
        })
})