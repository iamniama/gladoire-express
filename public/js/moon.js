document.querySelector("#sess_date").addEventListener('input', (evt)=>{
    let mdata = fetch(`https://api.farmsense.net/v1/moonphases/?d=${Math.floor(evt.target.valueAsDate.getTime() / 1000)}`)
        .then(response => response.json())
        .then((mdata)=>{
            document.querySelector('#sess_moon').value = `${mdata[0].Moon[0]}, ${mdata[0].Phase}`
        })
})